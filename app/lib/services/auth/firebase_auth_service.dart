import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart' as fb_auth;
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';
import 'package:jhanas/models/user.dart';
import 'package:jhanas/services/app_service.dart';
import 'package:jhanas/services/auth/auth_service.dart';
import 'package:jhanas/services/auth/token_mixin.dart';
import 'package:jhanas/services/auth/user_mixin.dart';

class FirebaseAuthService extends AuthService with ChangeNotifier, UserMixin, TokenMixin {
  final _app = GetIt.instance<AppService>();

  final _fbAuth = fb_auth.FirebaseAuth.instance;
  final _fbMessaging = FirebaseMessaging.instance;

  @override
  Future<void> signInWithEmailAndPassword(String email, String password) async {
    try {
      final signedInUser = await _fbAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      final user = signedInUser.user;
      if (user == null) {
        throw 'User is empty';
      }
      await _logInFirebaseUser(user);
    } on fb_auth.FirebaseAuthException catch (e) {
      switch (e.code) {
        case 'user-not-found':
          throw AuthException('No user found for that email.',
              code: AuthErrorUserNotFound, exception: e);
        case 'wrong-password':
          throw AuthException('Wrong password provided for that user.',
              code: AuthErrorWrongPassword, exception: e);
        case 'user-disabled':
          throw AuthException('User disabled.', code: AuthErrorUserDisabled, exception: e);
        case 'too-many-requests':
          throw AuthException('Too many requests. Try again later.',
              code: AuthErrorTooManyRequests, exception: e);
        case 'operation-not-allowed':
          throw AuthException('Operation not allowed.',
              code: AuthErrorOperationNotAllowed, exception: e);
        default:
          throw AuthException(e.message ?? 'An error occurred.', exception: e);
      }
    } on Exception catch (e) {
      throw AuthException('An error occurred.', exception: e);
    } catch (e) {
      throw AuthException('An error occurred.', exception: Exception(e.toString()));
    }
  }

  @override
  Future<void> signUpWithEmailAndPassword(String email, String password, {String name = ''}) async {
    try {
      final signedInUser = await _fbAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      var user = signedInUser.user;
      if (user == null) {
        throw 'User is empty';
      }
      if (name.isNotEmpty) {
        // update the user's display name and reload user with new name
        await user.updateDisplayName(name);
        await user.reload();
        user = _fbAuth.currentUser!;
      }

      await _logInFirebaseUser(user);
    } on fb_auth.FirebaseAuthException catch (e) {
      switch (e.code) {
        case 'weak-password':
          throw AuthException('The password provided is too weak.',
              code: AuthErrorWeakPassword, exception: e);
        case 'email-already-in-use':
          throw AuthException('The account already exists for that email.',
              code: AuthErrorEmailAlreadyInUse, exception: e);
        case 'operation-not-allowed':
          throw AuthException('Operation not allowed.',
              code: AuthErrorOperationNotAllowed, exception: e);
        default:
          throw AuthException(e.message ?? 'An error occurred.', exception: e);
      }
    } on Exception catch (e) {
      throw AuthException('An error occurred.', exception: e);
    } catch (e) {
      throw AuthException('An error occurred.', exception: Exception(e.toString()));
    }
  }

  @override
  Future<void> signOut() async {
    await _fbAuth.signOut(); // sign out from firebase
    await _setFirebaseUser(null); // remove the user and notify listeners
  }

  @override
  Future<void> onAppStart() async {
    _fbAuth.authStateChanges().listen((u) async {
      if (u == null) {
        await setAuthToken(null);
        _setFirebaseUser(null);
        return;
      }
      try {
        final String token = await u.getIdToken(true);
        await setAuthToken(token);
        await _setFirebaseUser(u);
      } on fb_auth.FirebaseAuthException catch (e) {
        if (e.code == 'internal-error') {
          setAuthToken(null);
          signOut();
        }
      }
    });

    _fbMessaging.onTokenRefresh.listen((token) async {
      await setAuthToken(token);
    });

    if (_fbAuth.currentUser != null) {
      try {
        final String token = await _fbAuth.currentUser!.getIdToken(true);
        await setAuthToken(token);
      } on fb_auth.FirebaseAuthException catch (e) {
        if (e.code == 'internal-error') {
          setAuthToken(null);
          signOut();
        }
      }
    }
    await _setFirebaseUser(_fbAuth.currentUser);
  }

  // ================================= PRIVATE ===================================

  Future<void> _logInFirebaseUser(fb_auth.User u) async {
    await _setFirebaseUser(u);
    _app.onboarding = true;
  }

  @override
  Future<String?> updateToken() async {
    if (_fbAuth.currentUser == null) {
      await setAuthToken(null);
      return null;
    }

    final String token = await _fbAuth.currentUser!.getIdToken(true);
    await setAuthToken(token);

    if (user == null || user!.firebaseId != _fbAuth.currentUser!.uid) {
      await _setFirebaseUser(_fbAuth.currentUser);
    }

    return token;
  }

  Future<void> _setFirebaseUser(fb_auth.User? fbUser) async {
    if (fbUser == null) {
      user = null;
      return;
    }

    final gqlUser = await fetchUser();

    if (gqlUser == null) {
      user = null;
      return;
    }

    user = User(
      fb: fbUser,
      me: gqlUser,
    );
  }
}

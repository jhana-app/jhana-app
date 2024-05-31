import 'dart:async';
import 'package:jhanas/models/user.dart';

const AuthMethodFirebase = 'firebase';
const AuthMethodLocal = 'local';

const AuthError = 'auth-error';
const AuthErrorUserNotFound = 'user-not-found';
const AuthErrorWrongPassword = 'wrong-password';
const AuthErrorWeakPassword = 'weak-password';
const AuthErrorUserDisabled = 'user-disabled';
const AuthErrorEmailAlreadyInUse = 'email-already-in-use';
const AuthErrorTooManyRequests = 'too-many-requests';
const AuthErrorOperationNotAllowed = 'operation-not-allowed';

class AuthException implements Exception {
  final String message;
  final String code;
  final String method;
  final Exception? exception;

  AuthException(this.message,
      {this.code = 'auth-error', this.method = AuthMethodFirebase, this.exception});

  @override
  String toString() => message;
}

abstract class AuthService {
  User? get user;
  Stream<User?> get onAuthStateChange;

  Future<void> signInWithEmailAndPassword(String email, String password);
  Future<void> signUpWithEmailAndPassword(String email, String password, {String name});
  Future<void> signOut();
  Future<void> onAppStart();
  FutureOr<String?> getAuthToken();
}

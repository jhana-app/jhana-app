import 'dart:async';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:jhanas/config.dart';
import 'package:jhanas/models/user.dart';
import 'package:jhanas/services/app_service.dart';
import 'package:jhanas/services/auth/auth_service.dart';
import 'package:jhanas/theme.dart';

class JhanasApp extends StatefulWidget {
  const JhanasApp({super.key});

  @override
  State<JhanasApp> createState() => _JhanaAppState();
}

class _JhanaAppState extends State<JhanasApp> {
  final _gql = GetIt.instance<GraphQLClient>();
  final _app = GetIt.instance<AppService>();
  final _auth = GetIt.instance<AuthService>();

  late StreamSubscription<User?> _authSubscription;

  @override
  void initState() {
    _authSubscription = _auth.onAuthStateChange.listen(onAuthStateChange);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _authSubscription.cancel();
  }

  // listening on auth state changes
  void onAuthStateChange(User? user) {
    // change app login state
    _app.loginState = user != null;

    if (isFirebaseAnalyticsEnabled) {
      final analytics = FirebaseAnalytics.instance;
      // set user in analytics
      analytics.setUserId(id: user?.userId);
      analytics.setUserProperty(name: 'gql_id', value: user?.userId);
      analytics.setUserProperty(name: 'firebase_id', value: user?.firebaseId);
      analytics.setUserProperty(name: 'name', value: user?.displayName);
    }
  }

  @override
  Widget build(BuildContext context) {
    return GraphQLProvider(
      client: ValueNotifier<GraphQLClient>(_gql),
      child: Builder(
        builder: (context) {
          final goRouter = GetIt.instance<GoRouter>();

          void routerListener() {
            if (isFirebaseAnalyticsEnabled) {
              final analytics = FirebaseAnalytics.instance;
              analytics.setCurrentScreen(screenName: goRouter.location);
            }
          }

          goRouter.addListener(routerListener);
          return MaterialApp.router(
            title: 'Jhana',
            theme: theme,
            routeInformationProvider: goRouter.routeInformationProvider,
            routeInformationParser: goRouter.routeInformationParser,
            routerDelegate: goRouter.routerDelegate,
          );
        },
      ),
    );
  }
}

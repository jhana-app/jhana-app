import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:intl/intl.dart';
import 'package:jhanas/app.dart';
import 'package:jhanas/atoms/restart.dart';
import 'package:jhanas/config.dart';
import 'package:jhanas/helpers/cleanup.dart';
import 'package:jhanas/player/audio_handler.dart';
import 'package:jhanas/router.dart';
import 'package:jhanas/services/app_service.dart';
import 'package:jhanas/services/auth/auth_service.dart';
import 'package:jhanas/services/auth/firebase_auth_service.dart';
import 'package:jhanas/services/auth/local_auth_service.dart';
import 'package:jhanas/services/download_service.dart';
import 'package:jhanas/services/graphql.dart';
import 'package:logging/logging.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // init logger
  Logger.root.level = Level.WARNING; // WARNING || ALL
  final loggerTimeFormatter = DateFormat('hh:mm:ss.SSS');
  Logger.root.onRecord.listen((record) {
    debugPrint(
      '${loggerTimeFormatter.format(record.time)} '
      '${record.loggerName} '
      '[${record.level.name}] '
      '${record.message}',
    );
  });

  // initialize cache
  CacheManager.logLevel = CacheManagerLogLevel.verbose;

  // initialize Hive storage for GraphQL cache
  await initHiveForFlutter();

  // initialize SharedPreferences
  final sharedPreferences = await SharedPreferences.getInstance();
  GetIt.instance.registerSingleton<SharedPreferences>(sharedPreferences);

  checkCleanup(sharedPreferences);

  // initialize Jhanas app service
  GetIt.instance.registerSingleton<AppService>(AppService());

  // initialize GraphQL client
  GetIt.instance.registerSingleton<GraphQLClient>(initGraphQLClient());

  if (loginMethod == AuthMethodFirebase || isFirebaseAnalyticsEnabled) {
    // initialize Firebase
    // await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
    await Firebase.initializeApp();
  }

  if (loginMethod == AuthMethodFirebase) {
    if (firebaseEmulator) {
      await FirebaseAuth.instance.useAuthEmulator('localhost', 9099);
    }
    // initialize Auth service
    GetIt.instance.registerSingleton<AuthService>(FirebaseAuthService());
  } else {
    // initialize Auth service
    GetIt.instance.registerSingleton<AuthService>(LocalAuthService());
  }

  // initialize Audio Service
  GetIt.instance.registerSingleton<AudioHandler>(await initAudioService());

  // initialize Download Service
  await initDownloadDir();
  GetIt.instance.registerSingleton<DownloadService>(DownloadService());

  // initialize app router
  final appRouter = AppRouter();
  GetIt.instance.registerSingleton<AppRouter>(appRouter);
  GetIt.instance.registerSingleton<GoRouter>(appRouter.router);

  // we don't need to send Sentry events while we are developing
  if (isLocal) {
    appRunner();
    return;
  }

  await SentryFlutter.init(
    (options) {
      options.dsn = sentryDsn;
    },
    appRunner: () => appRunner(),
  );
}

void appRunner() => runApp(const RestartWidget(JhanasApp()));

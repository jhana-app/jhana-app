import 'dart:io';

const environment = String.fromEnvironment(
  'FLUTTER_ENV',
  defaultValue: 'local',
);

const isLocal = environment == 'local';

final localhost = Platform.isAndroid ? '10.0.2.2' : '127.0.0.1';
final apiHost = String.fromEnvironment(
  'API_HOST',
  defaultValue: 'http://$localhost:8080',
);

final graphqlEndpoint = '$apiHost/api/graphql';
const graphqlSubscriptionEndpoint = null;

const sentryDsn = String.fromEnvironment(
  'SENTRY_DSN',
);

final Uri discordUrl = Uri.parse(
    const String.fromEnvironment('DISCORD_URL', defaultValue: 'https://discord.gg/JNJQg4jD3V'));

// can be 'local' or 'firebase'
const loginMethod = String.fromEnvironment(
  'LOGIN_METHOD',
  defaultValue: 'local',
);

const isFirebaseAnalyticsEnabled = bool.fromEnvironment(
  'FIREBASE_ANALYTICS',
);

const firebaseEmulator = bool.fromEnvironment(
  'FIREBASE_EMULATOR',
  defaultValue: true,
);

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:jhanas/features/activity/activity_screen.dart';
import 'package:jhanas/features/assistant/assistant_screen.dart';
import 'package:jhanas/features/courses_list/courses_list_screen.dart';
import 'package:jhanas/features/health_apple/apple_health_connect_screen.dart';
import 'package:jhanas/features/health_apple/apple_health_screen.dart';
import 'package:jhanas/features/journal/journal_record_screen.dart';
import 'package:jhanas/features/journal/journal_screen.dart';
import 'package:jhanas/features/lesson/lesson_screen.dart';
import 'package:jhanas/features/lesson_player/lesson_player_screen.dart';
import 'package:jhanas/features/lessons_roadmap/lessons_roadmap_screen.dart';
import 'package:jhanas/features/login/login_screen.dart';
import 'package:jhanas/features/onboarding/onboarding_screen.dart';
import 'package:jhanas/features/profile/profile_screen.dart';
import 'package:jhanas/features/statistics/statistics_screen.dart';
import 'package:jhanas/features/technique/technique_screen.dart';
import 'package:jhanas/features/theory_list/theory_list_screen.dart';
import 'package:jhanas/features/theory_list/widget/content_list.dart';
import 'package:jhanas/features/theory_listen/theory_screen.dart';
import 'package:jhanas/features/theory_listen_episode/episode_screen.dart';
import 'package:jhanas/features/theory_watch/theory_screen.dart';
import 'package:jhanas/features/theory_watch_episode/episode_screen.dart';
import 'package:jhanas/features/timer_play/timer_play_screen.dart';
import 'package:jhanas/features/timer_setup/timer_setup_screen.dart';
import 'package:jhanas/features/units_list/units_list_screen.dart';
import 'package:jhanas/layout/atoms/app_layout.dart';
import 'package:jhanas/layout/error_screen.dart';
import 'package:jhanas/layout/splash_screen.dart';
import 'package:jhanas/services/app_service.dart';

// ignore: camel_case_types
enum APP_PAGE {
  splash,
  login,
  error,
  onBoarding,
  devMenu,

  activity,
  coursesList,
  courseDetails,
  unitsList,
  unitDetails,
  unitRoadmap,
  techniqueDetails,
  lessonDetails,
  lessonPlayer,
  timer,
  timerIntervalBellsSetup,
  timerPlay,
  theory,
  theoryListen,
  theoryListenDetails,
  theoryListenEpisode,
  theoryWatch,
  theoryWatchDetails,
  theoryWatchEpisode,
  theoryRead,
  assistant,
  user,
  userJournal,
  userJournalRecord,
  userStatistics,
  userAppleHealth,
  userAppleHealthConnect,
}

extension AppPageExtension on APP_PAGE {
  String get toPath {
    switch (this) {
      case APP_PAGE.splash:
        return '/splash';
      case APP_PAGE.login:
        return '/login';
      case APP_PAGE.error:
        return '/error';
      case APP_PAGE.onBoarding:
        return '/onBoarding';
      case APP_PAGE.devMenu:
        return '/devMenu';

      case APP_PAGE.activity:
        return '/activity';
      case APP_PAGE.coursesList:
        return '/course';
      case APP_PAGE.courseDetails:
        return '/course/:courseId';
      case APP_PAGE.unitsList:
        return '/course/:courseId/units';
      case APP_PAGE.unitDetails:
        return '/course/:courseId/units/:unitId';
      case APP_PAGE.unitRoadmap:
        return '/course/:courseId/units/:unitId/lessons';
      case APP_PAGE.techniqueDetails:
        return '/course/:courseId/units/:unitId/techniques/:techniqueId';
      case APP_PAGE.lessonDetails:
        return '/course/:courseId/units/:unitId/lessons/:lessonId';
      case APP_PAGE.lessonPlayer:
        return '/course/:courseId/units/:unitId/lessons/:lessonId/player/:audioId';
      case APP_PAGE.timer:
        return '/timer';
      case APP_PAGE.timerIntervalBellsSetup:
        return '/timer/intervals-bells-setup';
      case APP_PAGE.timerPlay:
        return '/timer/play';
      case APP_PAGE.theory:
        return '/theory';
      case APP_PAGE.theoryListen:
        return '/theory/listen';
      case APP_PAGE.theoryListenDetails:
        return '/theory/listen/:contentId';
      case APP_PAGE.theoryListenEpisode:
        return '/theory/listen/:contentId/:episodeId';
      case APP_PAGE.theoryWatch:
        return '/theory/watch';
      case APP_PAGE.theoryWatchDetails:
        return '/theory/watch/:contentId';
      case APP_PAGE.theoryWatchEpisode:
        return '/theory/watch/:contentId/:episodeId';
      case APP_PAGE.theoryRead:
        return '/theory/read';
      case APP_PAGE.assistant:
        return '/assistant';
      case APP_PAGE.user:
        return '/user';
      case APP_PAGE.userJournal:
        return '/user/journal';
      case APP_PAGE.userJournalRecord:
        return '/user/journal/:recordId';
      case APP_PAGE.userStatistics:
        return '/user/statistics';
      case APP_PAGE.userAppleHealth:
        return '/user/apple-health';
      case APP_PAGE.userAppleHealthConnect:
        return '/user/apple-health/connect';
    }
  }

  String relative(APP_PAGE? parent) {
    final path = toPath;
    if (parent == null) return path;
    return path.replaceFirst('${parent.toPath}/', '');
  }

  String get toName => toString();
}

final initialLocation = APP_PAGE.coursesList.toPath;

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();

class AppRouter {
  final appService = GetIt.instance<AppService>();

  GoRouter get router => _goRouter;

  late final _goRouter = GoRouter(
    navigatorKey: _rootNavigatorKey,
    refreshListenable: appService,
    initialLocation: initialLocation,
    routes: <RouteBase>[
      GoRoute(
        path: APP_PAGE.splash.toPath,
        name: APP_PAGE.splash.toName,
        pageBuilder: (context, state) => NoTransitionPage(
          key: state.pageKey,
          name: APP_PAGE.splash.toPath,
          child: const FullscreenLayout(
            child: SplashScreen(),
          ),
        ),
      ),
      GoRoute(
        path: APP_PAGE.login.toPath,
        name: APP_PAGE.login.toName,
        pageBuilder: (context, state) => NoTransitionPage(
          key: state.pageKey,
          name: APP_PAGE.login.toPath,
          child: const FullscreenLayout(
            child: LogInScreen(),
          ),
        ),
      ),
      GoRoute(
        path: APP_PAGE.onBoarding.toPath,
        name: APP_PAGE.onBoarding.toName,
        pageBuilder: (context, state) => NoTransitionPage(
          key: state.pageKey,
          name: APP_PAGE.onBoarding.toPath,
          child: const FullscreenLayout(
            child: OnBoardingScreen(),
          ),
        ),
      ),
      GoRoute(
        path: APP_PAGE.error.toPath,
        name: APP_PAGE.error.toName,
        pageBuilder: (context, state) => NoTransitionPage(
          key: state.pageKey,
          name: APP_PAGE.error.toPath,
          child: FullscreenLayout(
            child: ErrorScreen(error: state.extra.toString()),
          ),
        ),
      ),
      ShellRoute(
        navigatorKey: _shellNavigatorKey,
        builder: (context, state, child) {
          return AppLayout(child: child);
        },
        routes: <RouteBase>[
          GoRoute(
            name: APP_PAGE.activity.toName,
            path: APP_PAGE.activity.toPath,
            pageBuilder: (context, state) => NoTransitionPage(
              key: state.pageKey,
              name: APP_PAGE.activity.toPath,
              child: const ActivityScreen(),
            ),
          ),
          GoRoute(
            name: APP_PAGE.coursesList.toName,
            path: APP_PAGE.coursesList.toPath,
            pageBuilder: (context, state) => NoTransitionPage(
              key: state.pageKey,
              name: APP_PAGE.coursesList.toPath,
              child: const CoursesListScreen(),
            ),
          ),
          GoRoute(
            name: APP_PAGE.courseDetails.toName,
            path: APP_PAGE.courseDetails.toPath,
            pageBuilder: (context, state) => MaterialPage(
              key: state.pageKey,
              name: APP_PAGE.courseDetails.toPath,
              child: CoursesListScreen(
                courseId: state.pathParameters['courseId']!,
              ),
            ),
            routes: [
              GoRoute(
                name: APP_PAGE.unitsList.toName,
                path: APP_PAGE.unitsList.relative(APP_PAGE.courseDetails),
                pageBuilder: (context, state) => MaterialPage(
                  key: state.pageKey,
                  name: APP_PAGE.unitsList.toPath,
                  child: UnitsListScreen(
                    courseId: state.pathParameters['courseId']!,
                  ),
                ),
              ),
              GoRoute(
                parentNavigatorKey: _rootNavigatorKey,
                name: APP_PAGE.techniqueDetails.toName,
                path: APP_PAGE.techniqueDetails.relative(APP_PAGE.unitsList),
                pageBuilder: (context, state) => MaterialPage(
                  key: state.pageKey,
                  name: APP_PAGE.techniqueDetails.toPath,
                  child: FullscreenLayout(
                    child: TechniqueScreen(
                      courseId: state.pathParameters['courseId']!,
                      unitId: state.pathParameters['unitId']!,
                      techniqueId: state.pathParameters['techniqueId']!,
                    ),
                  ),
                ),
              ),
              GoRoute(
                name: APP_PAGE.unitDetails.toName,
                path: APP_PAGE.unitDetails.relative(APP_PAGE.unitsList),
                pageBuilder: (context, state) => MaterialPage(
                  key: state.pageKey,
                  name: APP_PAGE.unitDetails.toPath,
                  child: UnitsListScreen(
                    courseId: state.pathParameters['courseId']!,
                    unitId: state.pathParameters['unitId']!,
                  ),
                ),
                routes: [
                  GoRoute(
                    name: APP_PAGE.unitRoadmap.toName,
                    path: APP_PAGE.unitRoadmap.relative(APP_PAGE.unitDetails),
                    pageBuilder: (context, state) => MaterialPage(
                      key: state.pageKey,
                      name: APP_PAGE.unitRoadmap.toPath,
                      child: LessonsRoadmapScreen(
                        courseId: state.pathParameters['courseId']!,
                        unitId: state.pathParameters['unitId']!,
                      ),
                    ),
                    routes: [
                      GoRoute(
                        name: APP_PAGE.lessonDetails.toName,
                        path: APP_PAGE.lessonDetails
                            .relative(APP_PAGE.unitRoadmap),
                        pageBuilder: (context, state) => MaterialPage(
                          key: state.pageKey,
                          name: APP_PAGE.lessonDetails.toPath,
                          child: LessonScreen(
                            courseId: state.pathParameters['courseId']!,
                            unitId: state.pathParameters['unitId']!,
                            lessonId: state.pathParameters['lessonId']!,
                          ),
                        ),
                        routes: [
                          GoRoute(
                            parentNavigatorKey: _rootNavigatorKey,
                            name: APP_PAGE.lessonPlayer.toName,
                            path: APP_PAGE.lessonPlayer
                                .relative(APP_PAGE.lessonDetails),
                            pageBuilder: (context, state) => MaterialPage(
                              key: state.pageKey,
                              name: APP_PAGE.lessonPlayer.toPath,
                              child: FullscreenLayout(
                                child: LessonPlayerScreen(
                                  courseId: state.pathParameters['courseId']!,
                                  unitId: state.pathParameters['unitId']!,
                                  lessonId: state.pathParameters['lessonId']!,
                                  audioId: state.pathParameters['audioId']!,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          GoRoute(
            name: APP_PAGE.timer.toName,
            path: APP_PAGE.timer.toPath,
            pageBuilder: (context, state) => NoTransitionPage(
              key: state.pageKey,
              name: APP_PAGE.timer.toPath,
              child: const TimerSetupScreen(
                route: TimerSetupScreenRoute.timerSetup,
              ),
            ),
            routes: [
              GoRoute(
                parentNavigatorKey: _rootNavigatorKey,
                name: APP_PAGE.timerIntervalBellsSetup.toName,
                path: APP_PAGE.timerIntervalBellsSetup.relative(APP_PAGE.timer),
                pageBuilder: (context, state) => MaterialPage(
                  key: state.pageKey,
                  name: APP_PAGE.timerIntervalBellsSetup.toPath,
                  child: const FullscreenLayout(
                    child: TimerSetupScreen(
                      route: TimerSetupScreenRoute.intervalBellsSetup,
                    ),
                  ),
                ),
              ),
              GoRoute(
                parentNavigatorKey: _rootNavigatorKey,
                name: APP_PAGE.timerPlay.toName,
                path: APP_PAGE.timerPlay.relative(APP_PAGE.timer),
                pageBuilder: (context, state) => MaterialPage(
                  key: state.pageKey,
                  name: APP_PAGE.timerPlay.toPath,
                  child: const FullscreenLayout(
                    child: TimerPlayScreen(),
                  ),
                ),
              ),
            ],
          ),
          GoRoute(
            name: APP_PAGE.assistant.toName,
            path: APP_PAGE.assistant.toPath,
            pageBuilder: (context, state) => NoTransitionPage(
              key: state.pageKey,
              name: APP_PAGE.assistant.toPath,
              child: const AssistantScreen(),
            ),
          ),
          GoRoute(
            name: APP_PAGE.theory.toName,
            path: APP_PAGE.theory.toPath,
            pageBuilder: (context, state) => NoTransitionPage(
              key: state.pageKey,
              name: APP_PAGE.theory.toPath,
              child: const TheoryListScreen(type: TheoryType.audio),
            ),
            routes: [
              GoRoute(
                name: APP_PAGE.theoryListen.toName,
                path: APP_PAGE.theoryListen.relative(APP_PAGE.theory),
                pageBuilder: (context, state) => MaterialPage(
                  key: state.pageKey,
                  name: APP_PAGE.theoryListen.toPath,
                  child: const TheoryListScreen(type: TheoryType.audio),
                ),
                routes: [
                  GoRoute(
                    name: APP_PAGE.theoryListenDetails.toName,
                    path: APP_PAGE.theoryListenDetails
                        .relative(APP_PAGE.theoryListen),
                    pageBuilder: (context, state) => MaterialPage(
                      key: state.pageKey,
                      name: APP_PAGE.theoryListenDetails.toPath,
                      child: TheoryListenScreen(
                        contentId: state.pathParameters['contentId']!,
                      ),
                    ),
                    routes: [
                      GoRoute(
                        parentNavigatorKey: _rootNavigatorKey,
                        name: APP_PAGE.theoryListenEpisode.toName,
                        path: APP_PAGE.theoryListenEpisode
                            .relative(APP_PAGE.theoryListenDetails),
                        pageBuilder: (context, state) => MaterialPage(
                          key: state.pageKey,
                          name: APP_PAGE.theoryListenEpisode.toPath,
                          child: FullscreenLayout(
                            child: TheoryListenEpisodeScreen(
                              contentId: state.pathParameters['contentId']!,
                              episodeId: state.pathParameters['episodeId']!,
                              play: state.queryParameters['play'] == 'true',
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              GoRoute(
                name: APP_PAGE.theoryWatch.toName,
                path: APP_PAGE.theoryWatch.relative(APP_PAGE.theory),
                pageBuilder: (context, state) => MaterialPage(
                  key: state.pageKey,
                  name: APP_PAGE.theoryWatch.toPath,
                  child: const TheoryListScreen(type: TheoryType.video),
                ),
                routes: [
                  GoRoute(
                    name: APP_PAGE.theoryWatchDetails.toName,
                    path: APP_PAGE.theoryWatchDetails
                        .relative(APP_PAGE.theoryWatch),
                    pageBuilder: (context, state) => MaterialPage(
                      key: state.pageKey,
                      name: APP_PAGE.theoryWatchDetails.toPath,
                      child: TheoryWatchScreen(
                        contentId: state.pathParameters['contentId']!,
                      ),
                    ),
                    routes: [
                      GoRoute(
                        parentNavigatorKey: _rootNavigatorKey,
                        name: APP_PAGE.theoryWatchEpisode.toName,
                        path: APP_PAGE.theoryWatchEpisode
                            .relative(APP_PAGE.theoryWatchDetails),
                        pageBuilder: (context, state) => MaterialPage(
                          key: state.pageKey,
                          name: APP_PAGE.theoryWatchEpisode.toPath,
                          child: FullscreenLayout(
                            child: TheoryWatchEpisodeScreen(
                              contentId: state.pathParameters['contentId']!,
                              episodeId: state.pathParameters['episodeId']!,
                              play: state.queryParameters['play'] == 'true',
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              GoRoute(
                name: APP_PAGE.theoryRead.toName,
                path: APP_PAGE.theoryRead.relative(APP_PAGE.theory),
                pageBuilder: (context, state) => MaterialPage(
                  key: state.pageKey,
                  name: APP_PAGE.theoryRead.toPath,
                  child: const TheoryListScreen(type: TheoryType.text),
                ),
              ),
            ],
          ),
          GoRoute(
              name: APP_PAGE.user.toName,
              path: APP_PAGE.user.toPath,
              pageBuilder: (context, state) => NoTransitionPage(
                    key: state.pageKey,
                    name: APP_PAGE.user.toPath,
                    child: ProfileScreen(),
                  ),
              routes: [
                GoRoute(
                  parentNavigatorKey: _rootNavigatorKey,
                  name: APP_PAGE.userJournal.toName,
                  path: APP_PAGE.userJournal.relative(APP_PAGE.user),
                  pageBuilder: (context, state) => MaterialPage(
                    key: state.pageKey,
                    name: APP_PAGE.userJournal.toPath,
                    child: const FullscreenLayout(
                      child: JournalScreen(),
                    ),
                  ),
                  routes: [
                    GoRoute(
                      parentNavigatorKey: _rootNavigatorKey,
                      name: APP_PAGE.userJournalRecord.toName,
                      path: APP_PAGE.userJournalRecord
                          .relative(APP_PAGE.userJournal),
                      pageBuilder: (context, state) => MaterialPage(
                        key: state.pageKey,
                        name: APP_PAGE.userJournalRecord.toPath,
                        child: FullscreenLayout(
                          child: JournalRecordScreen(
                            recordId: state.pathParameters['recordId']!,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                GoRoute(
                  parentNavigatorKey: _rootNavigatorKey,
                  name: APP_PAGE.userStatistics.toName,
                  path: APP_PAGE.userStatistics.relative(APP_PAGE.user),
                  pageBuilder: (context, state) => MaterialPage(
                    key: state.pageKey,
                    name: APP_PAGE.userStatistics.toPath,
                    child: const FullscreenLayout(
                      child: StatisticsScreen(),
                    ),
                  ),
                ),
                GoRoute(
                    parentNavigatorKey: _rootNavigatorKey,
                    name: APP_PAGE.userAppleHealth.toName,
                    path: APP_PAGE.userAppleHealth.relative(APP_PAGE.user),
                    pageBuilder: (context, state) => MaterialPage(
                          key: state.pageKey,
                          name: APP_PAGE.userAppleHealth.toPath,
                          child: const FullscreenLayout(
                            child: AppleHealthScreen(),
                          ),
                        ),
                    routes: [
                      GoRoute(
                        parentNavigatorKey: _rootNavigatorKey,
                        name: APP_PAGE.userAppleHealthConnect.toName,
                        path: APP_PAGE.userAppleHealthConnect
                            .relative(APP_PAGE.userAppleHealth),
                        pageBuilder: (context, state) => MaterialPage(
                          key: state.pageKey,
                          name: APP_PAGE.userAppleHealthConnect.toPath,
                          child: const FullscreenLayout(
                            child: AppleHealthConnectScreen(),
                          ),
                        ),
                      ),
                    ]),
              ]),
        ],
      ),
    ],
    errorBuilder: _errorBuilder,
    redirect: _redirect,
  );

  Widget _errorBuilder(BuildContext context, GoRouterState state) {
    return ErrorScreen(error: state.error.toString());
  }

  FutureOr<String?> _redirect(BuildContext context, GoRouterState state) {
    final loginLocation = router.namedLocation(APP_PAGE.login.toName);
    final homeLocation = router.namedLocation(APP_PAGE.coursesList.toName);
    final splashLocation = router.namedLocation(APP_PAGE.splash.toName);
    final onboardLocation = router.namedLocation(APP_PAGE.onBoarding.toName);

    final isLogedIn = appService.loginState;
    final isInitialized = appService.initialized;
    final isOnboarded = appService.onboarding;

    final isGoingToLogin = state.matchedLocation == loginLocation;
    final isGoingToInit = state.matchedLocation == splashLocation;
    final isGoingToOnboard = state.matchedLocation == onboardLocation;

    // If not Initialized and not going to Initialized redirect to Splash
    if (!isInitialized && !isGoingToInit) {
      return splashLocation;
    }

    // If not onboarded and not going to onboard redirect to OnBoarding
    if (isInitialized && !isOnboarded && !isGoingToOnboard) {
      return onboardLocation;
    }

    // If not logged in and not going to login redirect to Login
    if (isInitialized && isOnboarded && !isLogedIn && !isGoingToLogin) {
      return loginLocation;
    }

    // If all the scenarios are cleared but still going
    // to any of that screen redirect to Home
    if ((isLogedIn && isGoingToLogin) ||
        (isInitialized && isGoingToInit) ||
        (isOnboarded && isGoingToOnboard)) {
      return homeLocation;
    }

    // Else Don't do anything
    return null;
  }
}

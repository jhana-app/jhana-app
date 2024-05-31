import 'package:audio_service/audio_service.dart' as audio_service;
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:jhanas/api/graphql/content.graphql.dart';
import 'package:jhanas/api/graphql/content_episode.graphql.dart';
import 'package:jhanas/atoms/markdown.dart';
import 'package:jhanas/features/theory_listen_episode/widgets/atoms/player_controls.dart';
import 'package:jhanas/features/theory_listen_episode/widgets/atoms/player_header.dart';
import 'package:jhanas/features/theory_listen_episode/widgets/episode_not_found.dart';
import 'package:jhanas/helpers/battery_optimizations.dart';
import 'package:jhanas/layout/layout.dart';
import 'package:jhanas/player/audio_handler.dart';
import 'package:jhanas/player/media_source.dart';
import 'package:jhanas/router.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ListenEpisodeInfo extends StatefulWidget {
  final Fragment$ContentFull content;
  final List<Fragment$ContentEpisode> episodes;
  final String episodeId;
  final bool autoplay;

  const ListenEpisodeInfo({
    super.key,
    required this.content,
    required this.episodes,
    required this.episodeId,
    this.autoplay = false,
  });

  @override
  State<ListenEpisodeInfo> createState() => _ListenEpisodeInfoState();
}

class _ListenEpisodeInfoState extends State<ListenEpisodeInfo> {
  final _prefs = GetIt.instance<SharedPreferences>();
  final _audioHandler = GetIt.instance<AudioHandler>();

  late final episode = getEpisodeFromList(widget.episodes, widget.episodeId);

  /// Whether the 'foreground service start is not allowed' error happens before
  bool get foregroundServiceStartError =>
      _prefs.getBool(
        foregroundServiceStartNotAllowedPrefsKey,
      ) ??
      false;

  set foregroundServiceStartError(bool value) {
    if (value) {
      _prefs.setBool(foregroundServiceStartNotAllowedPrefsKey, true);
    } else {
      _prefs.remove(foregroundServiceStartNotAllowedPrefsKey);
    }
  }

  /// Whether the user has chosen to 'skip the battery optimization' dialog
  bool get skipBatteryOptimizationDialog =>
      _prefs.getBool(
        skipBatteryOptimizationDialogPrefsKey,
      ) ??
      false;

  /// Whether we show the 'skip battery optimization' notify
  bool get showSkipBatteryOptimizationNotify =>
      _prefs.getBool(
        skipBatteryOptimizationNotifyPrefsKey,
      ) ??
      false;
  set showSkipBatteryOptimizationNotify(bool value) {
    if (value) {
      _prefs.setBool(skipBatteryOptimizationNotifyPrefsKey, true);
    } else {
      _prefs.remove(skipBatteryOptimizationNotifyPrefsKey);
    }
  }

  @override
  void initState() {
    super.initState();

    _audioHandler.mediaSourceNotifier.addListener(_mediaSourceChanged);

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await _initBatteryOptimizationWarning();
      await _audioHandler.loadTheoryContent(
        content: widget.content,
        episodes: widget.episodes,
        episodeId: widget.episodeId,
        autoplay: widget.autoplay,
      );
    });
  }

  @override
  void dispose() {
    _audioHandler.mediaSourceNotifier.removeListener(_mediaSourceChanged);

    _audioHandler.softDispose();

    super.dispose();
  }

  Future<void> _initBatteryOptimizationWarning() async {
    if (!await isAndroid12()) {
      return;
    }

    audio_service.AudioService.foregroundServiceStartNotAllowedStream
        .listen((event) {
      foregroundServiceStartError = event;
    });

    if (skipBatteryOptimizationDialog) {
      return;
    }

    if (!showSkipBatteryOptimizationNotify) {
      if (context.mounted) {
        batteryOptimizationNotify(context);
        showSkipBatteryOptimizationNotify = true;
      }
    } else if (foregroundServiceStartError) {
      final isBatteryOptimizationsOn = await getBatteryOptimizationsState();
      if (isBatteryOptimizationsOn && context.mounted) {
        batteryOptimizationNotify(context);
        audio_service.AudioService.foregroundServiceStartNotAllowed.add(false);
      }
    }
  }

  void _mediaSourceChanged() {
    if (_audioHandler.mediaSourceNotifier.value is TheoryMediaSource) {
      final mediaSource =
          _audioHandler.mediaSourceNotifier.value as TheoryMediaSource;
      if (mediaSource.episode.id != widget.episodeId) {
        context.goNamed(
          APP_PAGE.theoryListenEpisode.toName,
          pathParameters: {
            'contentId': mediaSource.content.id,
            'episodeId': mediaSource.episode.id,
          },
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    if (episode == null) {
      return EpisodeNotFound(contentId: widget.content.id);
    }

    return PageLayout(
      backgroundImage: cloudsBackgroundImage,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PlayerHeader(episode: episode!),
          const SizedBox(height: 22),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Markdown(data: episode!.description),
              ),
            ),
          ),
          const SizedBox(height: 22),
          const PlayerControls(),
        ],
      ),
    );
  }
}

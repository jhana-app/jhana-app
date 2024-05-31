import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:jhanas/api/cache/common.dart';
import 'package:jhanas/api/graphql/content.graphql.dart';
import 'package:jhanas/api/graphql/content_episode.graphql.dart';
import 'package:jhanas/api/graphql/schema.graphql.dart';
import 'package:jhanas/atoms/button_contained.dart';
import 'package:jhanas/atoms/button_outline.dart';
import 'package:jhanas/atoms/pull_down_indicator.dart';
import 'package:jhanas/helpers/error.dart';
import 'package:jhanas/helpers/toast.dart';
import 'package:jhanas/player/audio_handler.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsMenuBottomSheet extends StatefulWidget {
  final Fragment$Content content;
  final List<Fragment$ContentEpisode> episodes;

  const SettingsMenuBottomSheet({
    super.key,
    required this.content,
    required this.episodes,
  });

  @override
  SettingsMenuBottomSheetState createState() => SettingsMenuBottomSheetState();
}

class SettingsMenuBottomSheetState extends State<SettingsMenuBottomSheet> {
  final _gql = GetIt.instance<GraphQLClient>();
  final _prefs = GetIt.instance<SharedPreferences>();

  bool _loading = false;
  bool _isStarted = false;

  @override
  void initState() {
    super.initState();

    for (final episode in widget.episodes) {
      if (episode.progress > 0 || episode.finishedAt != null) {
        _isStarted = true;
      }
    }
  }

  Future<void> _resetProgress() async {
    setState(() => _loading = true);

    final input = Input$ResetContentProgressInput(
      confirm: true,
    );

    final result = await _gql.mutate$ResetContentProgress(
      Options$Mutation$ResetContentProgress(
        variables: Variables$Mutation$ResetContentProgress(
          id: widget.content.id,
          input: input,
        ),
      ),
    );

    if (result.hasException) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        errorMessage(
          'Error while reseting progress',
          exception: result.exception.toString(),
        );
      });
    }

    for (final episode in widget.episodes) {
      _prefs.remove(positionPrefsKey(episode.id));
    }

    refetch(_gql, ['FetchActiveEpisodes', 'FetchActiveEpisode']);

    setState(() => _loading = false);

    toastInfo('Progress has been reset');
  }

  Future<void> _handleResetProgress(BuildContext context) async {
    if (!_isStarted) return;

    final reset = await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Reset progress'),
        content: Text(
          'Are you sure you want to reset your progress'
          ' for ${widget.content.title}?',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () => Navigator.of(context).pop(true),
            child: const Text('Reset'),
          ),
        ],
      ),
    );

    if (reset) {
      await _resetProgress();
      if (context.mounted) {
        Navigator.of(context).pop();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        color: const Color.fromRGBO(36, 33, 43, 1),
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                const PullDownIndicator(),
                const SizedBox(height: 13),
                ButtonOutline(
                  height: 40,
                  disabled: !_isStarted || _loading,
                  onPressed: () => _handleResetProgress(context),
                  child: const Text('Reset progress'),
                ),
                const SizedBox(height: 22),
                ButtonContained(
                  height: 40,
                  disabled: _loading,
                  child: const Text('Close'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                const SizedBox(height: 22),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

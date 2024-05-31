import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:jhanas/layout/layout.dart';
import 'package:jhanas/router.dart';

class EpisodeNotFound extends StatelessWidget {
  final String contentId;

  const EpisodeNotFound({super.key, required this.contentId});

  void _back(BuildContext context) {
    if (context.canPop()) {
      context.pop();
    } else {
      context.goNamed(
        APP_PAGE.theoryListenDetails.toName,
        pathParameters: {'contentId': contentId},
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return PageLayout(
      floatingAction: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 72,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 8),
                child: CircleAvatar(
                  radius: 24,
                  backgroundColor: const Color(0xff202020),
                  child: IconButton(
                    color: Colors.white,
                    icon: const Icon(Icons.chevron_left, size: 40),
                    padding: EdgeInsets.zero,
                    onPressed: () => _back(context),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionLocation: FloatingActionButtonLocation.centerTop,
      child: const Center(child: Text('Episode not found')),
    );
  }
}

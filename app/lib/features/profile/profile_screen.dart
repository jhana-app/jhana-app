import 'package:auto_size_text/auto_size_text.dart';
import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:jhanas/features/debug_menu/debug_menu.dart';
import 'package:jhanas/features/meditation_stats/meditation_stats.dart';
import 'package:jhanas/features/profile/widgets/settings_menu.dart';
import 'package:jhanas/features/week_stats/week_stats.dart';
import 'package:jhanas/layout/layout.dart';
import 'package:jhanas/router.dart';
import 'package:jhanas/services/app_service.dart';
import 'package:jhanas/services/auth/auth_service.dart';

class ProfileScreen extends StatelessWidget {
  final appService = GetIt.instance<AppService>();
  final authService = GetIt.instance<AuthService>();

  ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PageLayout(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  icon: const Icon(Icons.settings, size: 32),
                  padding: EdgeInsets.zero,
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      builder: (context) => SettingsMenuBottomSheet(),
                    );
                  },
                ),
              ],
            ),
          ),
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Container(
                  margin: const EdgeInsets.only(top: 40),
                  padding: const EdgeInsets.fromLTRB(16, 56, 16, 16),
                  decoration: BoxDecoration(
                    color: const Color(0xff303030),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AutoSizeText(
                        _username(),
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                        maxLines: 1,
                      ),
                      const SizedBox(height: 22),
                      MeditationStats(),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: WithDebugMenu(
                  child: Container(
                    width: 80,
                    height: 80,
                    decoration: const BoxDecoration(
                      color: Colors.grey,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: _avatar(),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 22),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Container(
              // width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 34, vertical: 6),
              decoration: BoxDecoration(
                color: const Color(0xff303030),
                borderRadius: BorderRadius.circular(8),
              ),
              child: const SizedBox(
                height: 45,
                child: WeekStats(),
              ),
            ),
          ),
          const SizedBox(height: 22),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: InkWell(
              onTap: () => context.pushNamed(APP_PAGE.userJournal.toName),
              borderRadius: BorderRadius.circular(8),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 8),
                      child: Icon(Icons.mode_edit, size: 24),
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      child: Text(
                        'Journal',
                        style: TextStyle(
                          color: Color(0xffE6E1E5),
                          fontSize: 16,
                        ),
                      ),
                    ),
                    SizedBox(width: 16),
                    Icon(Icons.arrow_right, size: 24),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: InkWell(
              onTap: () => context.pushNamed(APP_PAGE.userStatistics.toName),
              borderRadius: BorderRadius.circular(8),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 8),
                      child: Icon(Icons.auto_graph_outlined, size: 24),
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      child: Text(
                        'Statistics',
                        style: TextStyle(
                          color: Color(0xffE6E1E5),
                          fontSize: 16,
                        ),
                      ),
                    ),
                    SizedBox(width: 16),
                    Icon(Icons.arrow_right, size: 24),
                  ],
                ),
              ),
            ),
          ),
          if (appService.platformType == PlatformType.IOS)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: InkWell(
                onTap: () => context.pushNamed(APP_PAGE.userAppleHealth.toName),
                borderRadius: BorderRadius.circular(8),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 8),
                        child: Image(
                          image: AssetImage(
                            'assets/images/icons/apple-health.png',
                          ),
                          width: 24,
                          height: 24,
                        ),
                      ),
                      SizedBox(width: 16),
                      Expanded(
                        child: Text(
                          'Apple Health',
                          style: TextStyle(
                            color: Color(0xffE6E1E5),
                            fontSize: 16,
                          ),
                        ),
                      ),
                      SizedBox(width: 16),
                      Icon(Icons.arrow_right, size: 24),
                    ],
                  ),
                ),
              ),
            ),
          const Spacer(),
        ],
      ),
    );
  }

  Widget _avatar() {
    final url = authService.user?.photoURL ?? '';
    if (url.isEmpty) {
      return const Icon(Icons.person, size: 60);
    }
    return CircleAvatar(
      radius: 80,
      backgroundColor: Colors.grey,
      backgroundImage: ExtendedNetworkImageProvider(url, cache: true),
    );
  }

  String _username() {
    final name = authService.user?.displayName ?? '';
    return name.isEmpty ? 'User' : name;
  }
}

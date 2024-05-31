import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:jhanas/layout/layout.dart';
import 'package:jhanas/services/app_service.dart';
import 'package:jhanas/services/auth/auth_service.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final appService = GetIt.instance<AppService>();
  final authService = GetIt.instance<AuthService>();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => onStartUp(),
    );
  }

  Future<void> onStartUp() async {
    await appService.onAppStart();
    await authService.onAppStart();
  }

  @override
  Widget build(BuildContext context) {
    return const PageLayout(
      child: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}

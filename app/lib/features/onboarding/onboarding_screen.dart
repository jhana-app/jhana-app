import 'package:flutter/material.dart';
import 'package:jhanas/features/login/login_screen.dart';
import 'package:jhanas/features/onboarding/atoms/onboarding.dart';
import 'package:jhanas/features/onboarding/atoms/onboarding1.dart';
import 'package:jhanas/features/onboarding/atoms/onboarding2.dart';
import 'package:jhanas/features/onboarding/atoms/onboarding3.dart';
import 'package:jhanas/layout/layout.dart';

const stepsCount = 4;

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  PageController _pageController = PageController();

  void _nextStep() {
    _pageController.nextPage(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return PageLayout(
      backgroundImage: cloudsBackgroundImage,
      child: PageView.builder(
        physics: const PageScrollPhysics(),
        controller: _pageController,
        itemCount: stepsCount,
        itemBuilder: (context, position) => _content(position),
      ),
    );
  }

  Widget _content(int index) {
    switch (index) {
      case 0:
        return OnBoarding(
          nextStep: _nextStep,
          nextStepTitle: 'START YOUR JOURNEY',
          children: onBoarding1,
        );
      case 1:
        return OnBoarding(
          nextStep: _nextStep,
          nextStepTitle: 'Continue',
          children: onBoarding2,
        );
      case 2:
        return OnBoarding(
          nextStep: _nextStep,
          nextStepTitle: 'Continue',
          children: onBoarding3,
        );
      case 3:
        return const LogIn(page: LogInPage.signUp, signUpFirst: true);
      default:
        return Container();
    }
  }
}

import 'package:flutter/material.dart';
import 'package:jhanas/features/login/widgets/sign_in.dart';
import 'package:jhanas/features/login/widgets/sign_up.dart';
import 'package:jhanas/layout/layout.dart';

enum LogInPage {
  signIn,
  signUp,
}

class LogInScreen extends StatelessWidget {
  const LogInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const PageLayout(
      backgroundImage: cloudsBackgroundImage,
      child: LogIn(page: LogInPage.signIn, signUpFirst: false),
    );
  }
}

class LogIn extends StatefulWidget {
  final LogInPage page;
  final bool signUpFirst;

  const LogIn({
    super.key,
    required this.page,
    required this.signUpFirst,
  });

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  final PageController pageController = PageController();

  late LogInPage currentPage;
  late List<LogInPage> pages;

  @override
  void initState() {
    currentPage = widget.page;
    pages = widget.signUpFirst
        ? [
            LogInPage.signUp,
            LogInPage.signIn,
          ]
        : [
            LogInPage.signIn,
            LogInPage.signUp,
          ];

    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      pageController.jumpToPage(pages.indexOf(currentPage));
    });
  }

  void changePage(LogInPage newPage) {
    setState(() {
      currentPage = newPage;
    });
    pageController.animateToPage(
      pages.indexOf(newPage),
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: pages.map((p) => _pageWidget(p)).toList(),
    );
  }

  Widget _pageWidget(LogInPage page) {
    switch (page) {
      case LogInPage.signIn:
        return SignIn(changePage: changePage);
      case LogInPage.signUp:
        return SignUp(changePage: changePage);
    }
  }
}

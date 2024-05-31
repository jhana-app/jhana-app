import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:jhanas/atoms/button_contained.dart';
import 'package:jhanas/atoms/button_text.dart';
import 'package:jhanas/features/login/login_screen.dart';
import 'package:jhanas/features/login/widgets/layout.dart';
import 'package:jhanas/helpers/error.dart';
import 'package:jhanas/services/auth/auth_service.dart';

class SignIn extends StatefulWidget {
  final Function(LogInPage newPage) changePage;

  const SignIn({super.key, required this.changePage});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final authService = GetIt.instance<AuthService>();

  String email = '';
  String password = '';
  bool loading = false;

  Future<void> signIn() async {
    setState(() => loading = true);

    try {
      await authService.signInWithEmailAndPassword(email, password);
    } on AuthException catch (e) {
      errorMessage(e.toString());
      if (kDebugMode) {
        print(e);
      }
    } catch (e) {
      errorMessage(
        'Internal server error',
        exception: e.toString(),
      );
    }

    setState(() => loading = false);
  }

  @override
  Widget build(BuildContext context) {
    return LoginLayout(
      children: [
        const AutoSizeText(
          'Log in',
          style: TextStyle(
            color: Color(0xffE6E1E5),
            fontSize: 36,
          ),
          maxLines: 1,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                cursorColor: Colors.white,
                style: const TextStyle(fontSize: 18, color: Colors.white),
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                  labelStyle: TextStyle(fontSize: 16),
                ),
                onChanged: (value) {
                  setState(() {
                    email = value;
                  });
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                obscureText: true,
                cursorColor: Colors.white,
                style: const TextStyle(fontSize: 18, color: Colors.white),
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                  labelStyle: TextStyle(fontSize: 16),
                ),
                onChanged: (value) {
                  setState(() {
                    password = value;
                  });
                },
              ),
            ],
          ),
        ),
        SizedBox(
          height: 116,
          child: Column(
            children: [
              ButtonContained(
                width: double.infinity,
                height: 68,
                dark: true,
                disabled: loading,
                onPressed: signIn,
                child: const AutoSizeText(
                  'Continue',
                  style: TextStyle(fontSize: 22),
                  maxLines: 1,
                ),
              ),
              const SizedBox(height: 16),
              ButtonText(
                width: double.infinity,
                height: 32,
                onPressed: () => widget.changePage(LogInPage.signUp),
                child: const AutoSizeText(
                  'Don’t have an account?',
                  style: TextStyle(fontSize: 22),
                  maxLines: 1,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  final Widget? title;
  final Widget? emailField;
  final Widget? passwordField;
  final Widget? forgotPassword;
  final Widget? socialSection;
  final Widget? loginButton;
  final Widget? registerSection;

  const LoginForm({
    super.key,
    this.title,
    this.emailField,
    this.passwordField,
    this.forgotPassword,
    this.socialSection,
    this.loginButton,
    this.registerSection,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        if (title != null) ...[
          title!,
          const SizedBox(height: 30),
        ],

        if (emailField != null) ...[
          emailField!,
          const SizedBox(height: 20),
        ],

        if (passwordField != null) ...[
          passwordField!,
          const SizedBox(height: 8),
        ],

        if (forgotPassword != null) ...[
          forgotPassword!,
          const SizedBox(height: 25),
        ],

        if (socialSection != null) ...[
          Center(
            child: Text(
              "OR",
              style: TextStyle(
                color: Colors.white.withValues(alpha: 0.7),
              ),
            ),
          ),
          const SizedBox(height: 20),
          socialSection!,
          const SizedBox(height: 20),
        ],

        if (loginButton != null) ...[
          loginButton!,
          const SizedBox(height: 15),
        ],

        if (registerSection != null) registerSection!,
      ],
    );
  }
}
import 'package:flutter/material.dart';
import 'package:mashura/feature/auth/sign_up/presentation/widget/user_sign_up_screen_body.dart';

class UserSignUpScreen extends StatelessWidget {
  const UserSignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: UserSignUpScreenBody()),
    );
  }
}

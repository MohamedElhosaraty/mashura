import 'package:flutter/material.dart';
import '../widget/lawyer_sign_up_screen_two_body.dart';

class LawyerSignUpScreenTwo extends StatelessWidget {
  const LawyerSignUpScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: LawyerSignUpScreenTwoBody(),
      ),
    );
  }
}

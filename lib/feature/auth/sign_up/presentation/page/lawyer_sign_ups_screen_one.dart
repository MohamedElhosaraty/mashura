import 'package:flutter/material.dart';

import '../widget/lawyer_sign_up_screen_one_body.dart';

class LawyerSignUpsScreenOne extends StatelessWidget {
  const LawyerSignUpsScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: LawyerSignUpScreenOneBody(),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:gemverse/core/utils/app_colors.dart';

import 'splash_view_body.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blue,
      body: SplashViewBody(),
    );
  }
}

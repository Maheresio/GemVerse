import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../core/utils/app_images.dart';
import '../../core/utils/app_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  double _opacity = 0.0;

  @override
  void initState() {
    super.initState();
    _startFadeInAnimation();
    _navigateToHome();
  }

  void _startFadeInAnimation() {
    Future.delayed(const Duration(milliseconds: 500), () {
      if (mounted) {
        setState(() {
          _opacity = 1.0;
        });
      }
    });
  }

  void _navigateToHome() {
    Future.delayed(const Duration(seconds: 4), () {
      if (mounted) {
        GoRouter.of(context).pushReplacement(AppRouter.kBoardingView);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      duration: const Duration(seconds: 3),
      opacity: _opacity,
      curve: Curves.easeInOut,
      child: Center(
        child: AspectRatio(
          aspectRatio: 1.4,
          child: FittedBox(
            child: Assets.images.splash.image(),
          ),
        ),
      ),
    );
  }
}

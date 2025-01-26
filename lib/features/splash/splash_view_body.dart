import 'package:flutter/material.dart';
import 'package:gemverse/core/utils/app_images.dart';

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

    Future.delayed(const Duration(milliseconds: 500), () {
      setState(() {
        _opacity = 1.0;
      });
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

import 'package:flutter/material.dart';

import '../../../../core/utils/app_images.dart';

class BoardingImageSection extends StatelessWidget {
  const BoardingImageSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.3,
      child: Assets.images.boarding.image(),
    );
  }
}

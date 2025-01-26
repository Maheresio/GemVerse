import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/app_images.dart';

class VolumeIconButton extends StatelessWidget {
  const VolumeIconButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: SvgPicture.asset(
        Assets.images.volumeIcon,
      ),
      onPressed: () {},
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/app_images.dart';

class TextFieldSuffixIcons extends StatelessWidget {
  const TextFieldSuffixIcons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.h, // Constrain the height of the entire suffixIcon
      child: Padding(
        padding: EdgeInsetsDirectional.only(end: 10.w),
        child: Row(
          mainAxisSize:
              MainAxisSize.min, // Prevent Row from taking extra space
          children: [
            SizedBox(
              height: 30.h,
              width: 30.w,
              child: IconButton(
                icon: SvgPicture.asset(
                  Assets.images.microphoneIcon,
                  fit: BoxFit.contain,
                ),
                onPressed: () {
                  // Microphone action
                },
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(),
              ),
            ),
            SizedBox(width: 5.w), // Adjust spacing between icons
            SizedBox(
              height: 30.h,
              width: 30.w,
              child: IconButton(
                icon: SvgPicture.asset(
                  Assets.images.sendIcon,
                  fit: BoxFit.contain,
                ),
                onPressed: () {
                  // Send action
                },
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

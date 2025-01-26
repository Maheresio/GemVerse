// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/utils/app_colors.dart';
import '../../../core/utils/app_images.dart';

class ContinuationButtonWidget extends StatelessWidget {
  const ContinuationButtonWidget({
    super.key,
    this.onPressed,
  });

  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: .9,
      child: SizedBox(
        height: 56.h,
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(AppColors.blue),
          ),
          onPressed: onPressed,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Align(
                alignment: Alignment.center,
                child: Text(
                  'Continue',
                  style: TextStyle(
                    color: AppColors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.sp,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: SvgPicture.asset(
                  Assets.images.arrowIcon,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

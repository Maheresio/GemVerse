import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gemverse/core/utils/app_colors.dart';
import 'package:gemverse/core/utils/app_images.dart';

class BoardingViewBody extends StatelessWidget {
  const BoardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 60.w),
          child: Column(
            spacing: 10.h,
            children: [
              Text(
                'You AI Assistant',
                style: TextStyle(
                  fontSize: 23.sp,
                  fontWeight: FontWeight.w800,
                  color: AppColors.blue,
                ),
              ),
              Text(
                textAlign: TextAlign.center,
                'Using this software,you can ask you questions and receive articles using artificial intelligence assistant',
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w800,
                  color: AppColors.grey,
                ),
              ),
            ],
          ),
        ),
        AspectRatio(
          aspectRatio: 1.3,
          child: Assets.images.boarding.image(),
        ),
        FractionallySizedBox(
  widthFactor: .9,
  child: SizedBox(
    height: 56.h,
    child: ElevatedButton(
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(AppColors.blue),
      ),
      onPressed: () {},
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
),
      ],
    );
  }
}

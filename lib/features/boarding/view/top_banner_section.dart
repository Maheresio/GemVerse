import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/utils/app_colors.dart';

class TopBannerSection extends StatelessWidget {
  const TopBannerSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}

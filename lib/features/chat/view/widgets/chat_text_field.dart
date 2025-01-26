import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/utils/app_colors.dart';

import 'text_field_suffix_icons.dart';

class ChatTextField extends StatelessWidget {
  const ChatTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 20.h,
      left: 18.w,
      right: 18.w,
      child: Material(
        elevation: 20,
        borderRadius: BorderRadius.circular(30.r),
        child: TextField(
          decoration: InputDecoration(
            suffixIcon: TextFieldSuffixIcons(),
            hintText: 'Write your message...',
            hintStyle: TextStyle(
              color: AppColors.grey,
              fontSize: 13.sp,
              fontWeight: FontWeight.w600,
            ),
            contentPadding: EdgeInsets.symmetric(
              horizontal: 20.w,
              vertical: 10.h,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.r),
              borderSide: BorderSide.none,
            ),
            filled: true,
            fillColor: AppColors.white,
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_colors.dart';

class ListViewItem extends StatelessWidget {
  const ListViewItem({
    super.key,
    required this.isMe,
  });
  final bool isMe;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(
        start: isMe ? 94.w : 29.w,
        end: isMe ? 29.w : 94.w,
      ),
      child: Container(
        width: double.infinity,
        constraints: BoxConstraints(
          minHeight: 60.h, // Minimum height
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadiusDirectional.only(
            bottomStart: isMe ? Radius.circular(40.r) : Radius.zero,
            topStart: Radius.circular(40.r),
            bottomEnd: Radius.circular(40.r),
            topEnd: isMe ? Radius.zero : Radius.circular(40.r),
          ),
          color: isMe? AppColors.blue : AppColors.lightGrey
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 12.w,
            vertical: 8.h,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Hello chatGPT, how are you today?',
                style: TextStyle(
                  color:isMe?  Colors.white: AppColors.black,
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

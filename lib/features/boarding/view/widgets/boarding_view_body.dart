import 'package:flutter/material.dart';
import 'package:gemverse/core/utils/app_router.dart';
import 'package:go_router/go_router.dart';

import 'boarding_image_section.dart';
import 'continue_button_widget.dart';
import 'top_banner_section.dart';

class BoardingViewBody extends StatelessWidget {
  const BoardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        TopBannerSection(),
        BoardingImageSection(),
        ContinuationButtonWidget(
          onPressed: ()=>GoRouter.of(context).push(AppRouter.kChatView),
        ),
      ],
    );
  }
}

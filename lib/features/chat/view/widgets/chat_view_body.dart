import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gemverse/core/utils/app_colors.dart';

import 'list_view_item.dart';

class ChatViewBody extends StatelessWidget {
  const ChatViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return LIstViewItem();
  }
}

class LIstViewItem extends StatelessWidget {
  const LIstViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListViewItem();
  }
}


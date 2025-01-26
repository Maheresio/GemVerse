import 'package:flutter/material.dart';
import 'package:gemverse/core/utils/app_colors.dart';

import '../widgets/app_bar_title.dart';
import '../widgets/export_icon_button.dart';
import '../widgets/volume_icon_button.dart';

AppBar chatAppBar() {
  return AppBar(
    leading: BackButtonIcon(),
    title: AppBarTitle(),
    actions: [
      VolumeIconButton(),
      ExportIconButton(),
    ],
    bottom: PreferredSize(
      preferredSize: Size.fromHeight(1.0), // Height of the line
      child: Divider(
        color: AppColors.grey, // Color of the line
        thickness: 0, // Thickness of the line
      ),
    ),
  );
}

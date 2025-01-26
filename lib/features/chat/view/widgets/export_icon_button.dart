import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/app_images.dart';

class ExportIconButton extends StatelessWidget {
  const ExportIconButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(
        end: 5.w,
      ),
      child: IconButton(
        onPressed: () {},
        icon: SvgPicture.asset(
          Assets.images.exportIcon,
        ),
      ),
    );
  }
}

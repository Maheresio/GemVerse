import 'package:flutter/material.dart';

class BackButtonIcon extends StatelessWidget {
  const BackButtonIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        Icons.arrow_back_rounded,
      ),
      onPressed: () {},
    );
  }
}

import 'package:flutter/material.dart';

import 'view/boarding_view_body.dart';

class BoardingView extends StatelessWidget {
  const BoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BoardingViewBody(),
    );
  }
}

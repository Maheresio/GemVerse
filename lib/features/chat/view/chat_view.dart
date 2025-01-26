import 'package:flutter/material.dart';

import 'helper/chat_app_bar.dart';
import 'widgets/chat_view_body.dart';

class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: chatAppBar(),
      body: ChatViewBody(),
    );
  }
}

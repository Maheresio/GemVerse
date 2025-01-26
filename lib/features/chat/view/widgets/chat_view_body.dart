import 'package:flutter/material.dart';


import 'chat_text_field.dart';
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
    return Stack(
      children: [
        ListView.builder(itemBuilder: (context, index) {
          return ListViewItem(
            isMe: false,
          );
        }),
        ChatTextField(),
      ],
    );
  }
}

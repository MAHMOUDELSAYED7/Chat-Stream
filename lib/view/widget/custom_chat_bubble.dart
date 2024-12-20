import 'package:chat_stream/helper/extentions/extentions.dart';
import 'package:flutter/material.dart';
import 'package:chat_stream/helper/constant/colors.dart';

class ChatBubbleForCurrentUser extends StatelessWidget {
  const ChatBubbleForCurrentUser({
    Key? key,
    required this.message,
  }) : super(key: key);

  // final Message message;
  final String message;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        padding:
            const EdgeInsets.only(left: 16, top: 10, bottom: 10, right: 10),
        margin: const EdgeInsets.only(left: 100, top: 8, bottom: 16, right: 16),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(15),
            topLeft: Radius.circular(15),
            bottomRight: Radius.circular(15),
          ),
          color: ColorManager.purple,
        ),
        child: SelectableText(
          message,
          style:
              context.textTheme.bodyMedium?.copyWith(color: ColorManager.white),
        ),
      ),
    );
  }
}

class ChatBubbleForFriend extends StatelessWidget {
  const ChatBubbleForFriend({
    Key? key,
    required this.message,
  }) : super(key: key);

  final String message;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        padding:
            const EdgeInsets.only(left: 16, top: 10, bottom: 10, right: 10),
        margin: const EdgeInsets.only(left: 16, top: 8, bottom: 16, right: 100),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(15),
            topRight: Radius.circular(15),
            bottomRight: Radius.circular(15),
          ),
          color: ColorManager.darkGrey2,
        ),
        child: SelectableText(
          message,
          textAlign: TextAlign.start,
          style:
              context.textTheme.bodyMedium?.copyWith(color: ColorManager.white),
        ),
      ),
    );
  }
}

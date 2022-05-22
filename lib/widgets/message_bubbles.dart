import 'package:flutter/material.dart';

//packages
import 'package:timeago/timeago.dart' as timeago;

//models
import '../models/chat_message.dart';

class TextMessageBubble extends StatelessWidget {
  final bool isOwnMessage;
  final ChatMessage message;
  final double height;
  final double width;

  const TextMessageBubble(
      {Key? key,
      required this.isOwnMessage,
      required this.message,
      required this.height,
      required this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Color> _colorSchema = isOwnMessage
        ? [Color.fromRGBO(0, 136, 249, 1.0), Color.fromRGBO(0, 82, 218, 1.0)]
        : [Color.fromRGBO(51, 49, 68, 1.0), Color.fromRGBO(61, 49, 68, 1.0)];
    return Container(
      height: height + (message.content.length) / 20 * 6.0,
      width: width,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(
              colors: _colorSchema,
              stops: [0.30, 0.70],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight)),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            message.content,
            style: const TextStyle(color: Colors.white),
          ),
          Text(
            timeago.format(message.sentTime),
            style: const TextStyle(color: Colors.white70),
          )
        ],
      ),
    );
  }
}

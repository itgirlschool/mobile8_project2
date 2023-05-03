import 'package:flutter/material.dart';

class ChatList extends StatefulWidget {
  String firstName;
  String lastName;
  String messageText;
  String imageUrl;
  bool isMessageRead;

  ChatList(
      {required this.firstName,
      required this.lastName,
      required this.messageText,
      required this.imageUrl,
      required this.isMessageRead});

  @override
  _ChatListState createState() => _ChatListState();
}

class _ChatListState extends State<ChatList> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding:
            const EdgeInsets.only(left: 16, right: 16, top: 18, bottom: 18),
        child: Row(
          children: [
            Expanded(
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(widget.imageUrl),
                    maxRadius: 45,
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.transparent,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${widget.firstName} ${widget.lastName}',
                            style: const TextStyle(fontSize: 24),
                          ),
                          const SizedBox(
                            height: 6,
                          ),
                          Text(
                            widget.messageText,
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.grey.shade600,
                                fontWeight: widget.isMessageRead
                                    ? FontWeight.bold
                                    : FontWeight.normal),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

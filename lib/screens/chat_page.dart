import 'package:flutter/material.dart';
import 'package:mobile8_project2/widgets/chat_list.dart';
import 'package:mobile8_project2/widgets/header_with_search_box.dart';
import '../constants.dart';
import '../models/chat_users_model.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<ChatUsers> chatUsers = [
    ChatUsers(
        firstName: 'Ксения',
        lastName: 'Петрова',
        imageURL:
            'https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=388&q=80',
        messageText: 'Привет!'),
    ChatUsers(
        firstName: 'Денис',
        lastName: 'Власов',
        imageURL:
            'https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
        messageText: ' '),
    ChatUsers(
        firstName: 'Лига',
        lastName: 'баскетбола',
        imageURL:
            'https://pics.freeicons.io/uploads/icons/png/172117991416342845844476-512.png',
        messageText: 'следующая тренировка\n23.04 в 17.00'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HeaderWithSearchBox(screenTitle: 'Чаты'),
              Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16, top: 14),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                          width: 80,
                          height: 30,
                          child: DecoratedBox(
                              decoration: const BoxDecoration(
                                color: boxFillColor,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(5.0),
                                ),
                              ),
                              child: TextButton(
                                  onPressed: () {},
                                  style: TextButton.styleFrom(
                                    foregroundColor: Colors.black,
                                  ),
                                  child: const Text('личные')))),
                      SizedBox(
                          width: 90,
                          height: 30,
                          child: DecoratedBox(
                              decoration: const BoxDecoration(
                                color: boxFillColor,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(5.0),
                                ),
                              ),
                              child: TextButton(
                                  onPressed: () {},
                                  style: TextButton.styleFrom(
                                    foregroundColor: Colors.black,
                                  ),
                                  child: const Text('групповые')))),
                      SizedBox(
                          width: 90,
                          height: 30,
                          child: DecoratedBox(
                              decoration: const BoxDecoration(
                                color: boxFillColor,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(5.0),
                                ),
                              ),
                              child: TextButton(
                                  onPressed: () {},
                                  style: TextButton.styleFrom(
                                    foregroundColor: Colors.black,
                                  ),
                                  child: const Text('турниры')))),
                      SizedBox(
                          width: 90,
                          height: 30,
                          child: DecoratedBox(
                              decoration: const BoxDecoration(
                                color: boxFillColor,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(5.0),
                                ),
                              ),
                              child: TextButton(
                                  onPressed: () {},
                                  style: TextButton.styleFrom(
                                    foregroundColor: Colors.black,
                                  ),
                                  child: const Text('фестивали')))),
                    ],
                  )),
              ListView.builder(
                itemCount: chatUsers.length,
                shrinkWrap: true,
                padding: const EdgeInsets.only(top: 20, bottom: 20, left: 10),
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return ChatList(
                    firstName: chatUsers[index].firstName,
                    lastName: chatUsers[index].lastName,
                    messageText: chatUsers[index].messageText,
                    imageUrl: chatUsers[index].imageURL,
                    isMessageRead: (index == 0 || index == 3) ? true : false,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

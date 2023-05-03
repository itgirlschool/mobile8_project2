import 'package:flutter/material.dart';
import 'bubble_stories.dart';

class UserAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text('@eugene',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 22)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Profile picture
                  Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                        color: Colors.grey[300], shape: BoxShape.circle),
                  ),
                  // Number of posts, followers, following and buttons
                  Column(
                    children: [
                      Row(
                        children: [
                          Column(
                            children: [
                              TextButton(
                                style: ElevatedButton.styleFrom(),
                                onPressed: () {},
                                child: const Text('128',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 23)),
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color.fromARGB(
                                        255, 228, 219, 253)),
                                onPressed: () {},
                                child: const Text(
                                  'связи',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 12),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              TextButton(
                                style: ElevatedButton.styleFrom(),
                                onPressed: () {},
                                child: const Text('165',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 23)),
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color.fromARGB(
                                        255, 228, 219, 253)),
                                onPressed: () {},
                                child: const Text(
                                  'подписчики',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 12),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              TextButton(
                                style: ElevatedButton.styleFrom(),
                                onPressed: () {},
                                child: const Text('231',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 23)),
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color.fromARGB(
                                        255, 228, 219, 253)),
                                onPressed: () {},
                                child: const Text(
                                  'подписки',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 12),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(
                            child: ElevatedButton.icon(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      const Color.fromARGB(255, 228, 219, 253)),
                              onPressed: () {},
                              icon: Icon(Icons.edit_outlined,
                                  color: Colors.black),
                              label: Text(
                                'редактировать',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 12),
                              ),
                            ),
                          ),
                          SizedBox(
                            child: ElevatedButton.icon(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      const Color.fromARGB(255, 228, 219, 253)),
                              onPressed: () {},
                              icon:
                                  Icon(Icons.query_stats, color: Colors.black),
                              label: Text(
                                'статистика',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 12),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // Profile page bio
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 17.0),
                    child: Text('Евгений',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18)),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 17.0),
                    child: Text('тренер по карате',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.grey,
                        )),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 17.0),
                    child: Text('кандидат в мастера спорта',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.grey,
                        )),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 17.0),
                    child: Text('обладатель черного пояса',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.grey,
                        )),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 17.0),
                    child: Text('г.Тверь',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.grey,
                        )),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15.0, top: 15, bottom: 15),
                    child: Row(
                      children: const [
                        Icon(Icons.person_outline),
                        Text('тренер',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
              child: Container(
                color: Color.fromARGB(255, 240, 239, 239),
              ),
            ),
            // Stories
            Padding(
              padding: const EdgeInsets.only(
                  top: 10.0, bottom: 10, left: 15, right: 15),
              child: Row(
                children: [
                  BubbleStories(text: 'story 1'),
                  BubbleStories(text: 'story 2'),
                  BubbleStories(text: 'story 3'),
                  BubbleStories(text: 'story 4'),
                ],
              ),
            ),
            SizedBox(
              height: 15,
              child: Container(
                color: Color.fromARGB(255, 240, 239, 239),
              ),
            ),
            SizedBox(height: 10),
            // Posts
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: GridView.builder(
                    shrinkWrap: true,
                    itemCount: 9,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3),
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.all(8),
                        child: Container(
                          height: 30,
                          width: 30,
                          color: Colors.grey,
                        ),
                      );
                    }),
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:mobile8_project2/widgets/header_no_search_box.dart';


final List people = [
  'person 1',
  'person 2',
  'person 3',
  'person 4',
  'person 5',
  'person 6',
  'person 7'
];

class Stories extends StatelessWidget {
  const Stories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(8, 60, 8, 0),
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey.shade200,
            ),
          ),
          Text("name")
        ],
      ),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.white,
          body: SafeArea(
            child: Column(
              children: [
                HeaderNoSearchBox(screenTitle: "Главная"),
                Container(
                  height: 170,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                      Stories(),
                      Stories(),
                      Stories(),
                      Stories(),
                      Stories(),
                      Stories(),
                    ],
                  ),
                ),
                Expanded(
                  child: ListView(
                    children: const [
                      Posts(),
                      Posts(),
                      Posts(),
                      Posts(),
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}

class Posts extends StatelessWidget {
  const Posts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Container(
                height: 40,
                width: 40,
                decoration:
                    BoxDecoration(color: Colors.grey, shape: BoxShape.circle),
              ),
              const SizedBox(
                height: 10,
                width: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text(
                    "name",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Теннис",
                    style: TextStyle(fontSize: 10),
                  ),
                  Text(
                    "20 апреля 2023",
                    style: TextStyle(fontSize: 10),
                  )
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
          width: 10,
        ),
        Container(
          height: 300,
          color: Colors.grey,
        ),
      ],
    );
  }
}

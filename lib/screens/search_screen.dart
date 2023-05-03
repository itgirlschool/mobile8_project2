import 'package:flutter/material.dart';
import 'package:project_sportchat/models/recommended_model.dart';
import 'package:project_sportchat/widgets/header_with_search_box.dart';
import 'package:project_sportchat/widgets/recommended_list.dart';
import '../consts.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  List<SearchRecommendedModel> recommendedUsers = [
    SearchRecommendedModel(
      imageRec:
          'https://images.unsplash.com/photo-1583864697784-a0efc8379f70?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=388&q=80',
      nameRec: 'Александр',
      infoRec: 'член футбольной\nассоциации г.Тверь',
    ),
    SearchRecommendedModel(
      imageRec:
          'https://plus.unsplash.com/premium_photo-1672039009234-397e7d4ae5bb?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
    ),
    SearchRecommendedModel(
        imageRec:
            'https://images.unsplash.com/photo-1499676988064-a3779763470e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=422&q=80'),
    SearchRecommendedModel(
        imageRec:
            'https://images.unsplash.com/photo-1480179087180-d9f0ec044897?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=415&q=80')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const HeaderWithSearchBox(screenTitle: 'Поиск'),
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
                              child: const Text('люди')))),
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
                              child: const Text('площадки')))),
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
                              child: const Text('тренеры')))),
                ],
              )),
          const Padding(
            padding: EdgeInsets.only(top: 16, left: 20),
            child: Text('Рекоммендации',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          ),
          const SizedBox(height: 6),
          GridView.builder(
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2),
            itemCount: recommendedUsers.length,
            itemBuilder: (BuildContext context, int index) {
              return RecommendedList(
                  recommendedUsers[index].imageRec,
                  recommendedUsers[index].nameRec,
                  recommendedUsers[index].infoRec);
            },
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20.0),
            child: Text(
              'Теннисные площадки рядом с Вами',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 20, right: 2, bottom: 4),
            child: Row(
              children: [
                Expanded(
                  child: SizedBox(
                    child: Image.network(
                        'https://images.unsplash.com/photo-1557561371-160934834af4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1408&q=80'),
                  ),
                ),
                const SizedBox(width: 10),
                Column(
                  children: const [
                    Text('Адрес:\nГлавная улица,\n34'),
                    SizedBox(height: 12),
                    Text('Часы работы:\nпт-пн 10-21\nсб-вс 8-23'),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    )));
  }
}

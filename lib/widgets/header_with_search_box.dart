import 'package:flutter/material.dart';
import 'package:mobile8_project2/constants.dart' as Constants;

class HeaderWithSearchBox extends StatelessWidget {
  const HeaderWithSearchBox({
    super.key,
    required this.screenTitle,
  });

  final String screenTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, top: 14),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                screenTitle,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Container(
                padding: const EdgeInsets.only(
                    left: 8,
                    right: 8,
                    // top: 2,
                    bottom: 6),
                height: 24,
                child: Row(
                  children: [
                    IconButton(
                      iconSize: 28,
                      icon: const Icon(Icons.person_add_outlined),
                      color: Colors.black,
                      onPressed: () {},
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    IconButton(
                      iconSize: 28,
                      icon: const Icon(Icons.notifications_none_outlined),
                      color: Colors.black,
                      onPressed: () {},
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
          child: TextField(
            decoration: InputDecoration(
              hintText: "Поиск",
              hintStyle:
                  const TextStyle(color: Color(0xFFDAD4DB), fontSize: 20),
              prefixIcon: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  color: Color(0xFFDAD4DB),
                  size: 25,
                ),
              ),
              suffixIcon: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.filter_list,
                  color: Color(0xFFDAD4DB),
                  size: 25,
                ),
              ),
              filled: true,
              fillColor: boxFillColor,
              contentPadding: const EdgeInsets.all(8),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: const BorderSide(color: boxFillColor)),
            ),
          ),
        ),
      ],
    );
  }
}

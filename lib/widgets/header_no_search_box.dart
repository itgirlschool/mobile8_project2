import 'package:flutter/material.dart';
import '../constants.dart';

class HeaderNoSearchBox extends StatelessWidget {
  const HeaderNoSearchBox({
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

      ],
    );
  }
}

import 'package:flutter/material.dart';

class RecommendedList extends StatefulWidget {
  String imageRec;
  String nameRec;
  String infoRec;

  RecommendedList(this.imageRec, this.nameRec, this.infoRec, {super.key});

  @override
  State<RecommendedList> createState() => _RecommendedListState();
}

class _RecommendedListState extends State<RecommendedList> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.only(
          top: 14,
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  Image.network(widget.imageRec, width: 100, height: 140),
                  Container(
                    color: Colors.transparent,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '${widget.nameRec}\n${widget.infoRec}',
                          style: const TextStyle(fontSize: 14),
                        ),
                      ],
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

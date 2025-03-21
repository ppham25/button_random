import 'dart:math';

import 'package:flutter/material.dart';

class CalendarTask extends StatelessWidget {
  final String timeline, title, desc;
  const CalendarTask({
    super.key,
    required this.timeline,
    required this.title,
    required this.desc,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 8, 0, 8),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [Text(timeline), Text("AM")],
          ),
          SizedBox(width: 20),
          Container(
            color: Color.fromRGBO(
              Random().nextInt(256),
              Random().nextInt(256),
              Random().nextInt(256),
              1,
            ),
            height: 70,
            width: 10,
          ),
          SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(desc),
            ],
          ),
        ],
      ),
    );
  }
}

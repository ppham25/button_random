import 'dart:math';

import 'package:button_task_btvn/task_list.dart';
import 'package:flutter/material.dart';


import 'day_list.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  late int chiso;
  @override
  void initState(){
    super.initState();
    chiso=0;
  }
  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> events = [
      {
        "time": "07:00",
        "session": "AM",
        "title": "CTDL & GT",
        "description": "Nguyễn Duy Phương",
      },
      {
        "time": "09:00",
        "session": "AM",
        "title": "Lí thuyết thông tin",
        "description": "Phạm Văn Sự",
      },
      {
        "time": "13:00",
        "session": "PM",
        "title": "Tư tưởng HCM",
        "description": "Phạm Thị Khánh",
      },
      {
        "time": "15:00",
        "session": "PM",
        "title": "Toán rời rạc 2",
        "description": "Nguyễn Tất Thắng",
      },
    ];
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          floatingActionButton: InkWell(
            onTap: ()=> setState(() {
              chiso= Random().nextInt(events.length);
            }),
            child: Container(color: Colors.red, height: 100, width: 100,),
          ),
          body: Center(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 100),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CalenderBox(text1: "20", text2: "Mon"),
                          CalenderBox(text1: "20", text2: "Mon"),
                          CalenderBox(text1: "20", text2: "Mon"),
                          CalenderBox(text1: "20", text2: "Mon"),
                          CalenderBox(text1: "20", text2: "Mon"),
                          CalenderBox(text1: "20", text2: "Mon"),
                          CalenderBox(text1: "20", text2: "Mon"),
                          CalenderBox(text1: "20", text2: "Mon"),
                          CalenderBox(text1: "20", text2: "Mon"),
                          CalenderBox(text1: "20", text2: "Mon"),
                          CalenderBox(text1: "20", text2: "Mon"),
                          CalenderBox(text1: "20", text2: "Mon"),
                          CalenderBox(text1: "20", text2: "Mon"),
                          CalenderBox(text1: "20", text2: "Mon"),
                          CalenderBox(text1: "20", text2: "Mon"),
                        ],
                      ),
                    ),
                    SizedBox(height: 50),
                    SizedBox(
                      height: 600, //layout anh ngu bo me
                      child: ListView.separated(
                        itemBuilder: (context, index) {
                          return CalendarTask(
                            timeline: events[chiso]["time"],
                            title: events[chiso]["title"],
                            desc: events[chiso]["description"],
                          );
                        },
                        itemCount: 1,
                        separatorBuilder: (context, index) {
                          return Divider(thickness: 2);
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

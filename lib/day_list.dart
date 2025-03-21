import 'package:flutter/material.dart';

class CalenderBox extends StatefulWidget {
  final String text1, text2;

  const CalenderBox({super.key, required this.text1, required this.text2});

  @override
  State<CalenderBox> createState() => _CalenderBoxState();
}

class _CalenderBoxState extends State<CalenderBox> {
  late bool _hasBorder;
  late String _s;
  @override
  void initState() {
    super.initState();
    _hasBorder = true;
    _s = widget.text1;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 8.0),
      width: 70,
      height: 100,
      decoration: BoxDecoration(
        border: _hasBorder ? Border.all(color: Colors.grey) : null,
        borderRadius: BorderRadius.circular(15),
        color: _hasBorder ? null : Color(0xffcae9ae),
      ),
      child: InkWell(
        onTap:
            () => setState(() {
              _hasBorder = !_hasBorder;
              _s = (int.parse(_s) + 1).toString();
            }),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _s,
              style: TextStyle(
                fontSize: 30,
                color: Colors.deepPurple,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              widget.text2,
              style: TextStyle(
                color: Colors.deepPurple,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

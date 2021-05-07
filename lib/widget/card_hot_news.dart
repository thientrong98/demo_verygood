import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardHotNew extends StatefulWidget {
  final String title;
  final String subtitle;

  const CardHotNew({Key? key, required this.title, required this.subtitle})
      : super(key: key);

  @override
  _CardHotNewState createState() => _CardHotNewState();
}

class _CardHotNewState extends State<CardHotNew> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          widget.title != null ? widget.title : "",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 5),
        Text(
          widget.subtitle != null ? widget.subtitle : "",
          style: TextStyle(color: Colors.grey),
        ),
      ],
    );
  }
}

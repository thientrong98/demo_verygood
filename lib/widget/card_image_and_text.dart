import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardImageAndText extends StatefulWidget {
  final String content;
  // final String image;

  const CardImageAndText({Key? key, required this.content}) : super(key: key);

  @override
  _CardImageAndTextState createState() => _CardImageAndTextState();
}

class _CardImageAndTextState extends State<CardImageAndText> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.ac_unit,
          color: Colors.white,
        ),
        SizedBox(height: 10),
        Text(
          widget.content,
          style: TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}

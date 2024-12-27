import 'package:flutter/material.dart';


class TextComponents extends StatelessWidget {

  final Color color;
  final double textSize;
  final FontWeight fw;
  final TextAlign textAlign;
  final String txt;

  TextComponents({
    required this.txt,
    this.color=Colors.black,
    this.textSize=16,
    this.fw=FontWeight.bold,
    this.textAlign=TextAlign.left,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      txt, 
      style: TextStyle(
       color: color,
        fontSize: textSize,
        fontWeight: fw
      ),
      textAlign: textAlign,
    );
  }
}
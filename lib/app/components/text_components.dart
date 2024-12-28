import 'package:flutter/material.dart';


class TextComponents extends StatelessWidget {

  final Color color;
  final double textSize;
  final FontWeight fw;
  final TextAlign textAlign;
  final String txt;
  final String family;

  TextComponents({
    required this.txt,
    this.color=Colors.black,
    this.textSize=16,
    this.fw=FontWeight.bold,
    this.textAlign=TextAlign.left,
    this.family="Regular"
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      txt, 
      style: TextStyle(
        fontFamily: family,
       color: color,
        fontSize: textSize,
        fontWeight: fw
      ),
      textAlign: textAlign,
    );
  }
}
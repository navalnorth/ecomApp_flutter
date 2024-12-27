import 'package:flutter/material.dart';


class ButtonComponent extends StatelessWidget {

  final String textButton;
  final Color buttonColor;
  final Color buttonColorText;

  ButtonComponent({
    required this.textButton,
    required this.buttonColor,
    required this.buttonColorText,
  });

  @override
  Widget build(BuildContext context) {
    
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: buttonColor,
      ),
      child: Center(
        child: Text(
          textButton, 
          style: TextStyle(
            color: buttonColorText,
            fontSize: 17
          )
        ),
      ),
    );
  }
  
}
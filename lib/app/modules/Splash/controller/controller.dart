import 'package:ecom_app/app/modules/home/view/home.dart';
import 'package:flutter/material.dart';

void time(BuildContext context) {
  Future.delayed(Duration(seconds: 3), () {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => Home()),
    );
  });
}

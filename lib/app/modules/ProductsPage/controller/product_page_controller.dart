import 'package:ecom_app/app/components/space.dart';
import 'package:ecom_app/app/components/text_components.dart';
import 'package:ecom_app/utils/colors.dart';
import 'package:flutter/material.dart';

bool isMan = true;
bool isKids = false;

CategoryBox(String productPage) {
  return Container(
    margin: EdgeInsets.only(right: 20),
    child: Column(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: greyColor,
        ),
        h(15),
        TextComponents(txt: productPage, fw: FontWeight.bold, family: "bold",)
      ],
    ),
  );
}
import 'package:ecom_app/app/components/button_components.dart';
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


ProductBox(String ProductName, ProductReview, ProductPriceNormal, ProductPricePromo) {
  return Card(
    color: Colors.white,
    child: Container(
      height: 350,
      child: Column(
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
              color: greyColor,
              borderRadius: const BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20),)
            ),
          ),
          h(20),

          TextComponents(txt: ProductName, fw: FontWeight.bold, family: "Bold",),
          h(10),

          Container(
            margin: const EdgeInsets.only(left: 5, right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Row(
                  children: [
                    Icon(Icons.star, color: Colors.deepOrange, size: 14,),
                    Icon(Icons.star, color: Colors.deepOrange, size: 14,),
                    Icon(Icons.star, color: Colors.deepOrange, size: 14,),
                    Icon(Icons.star, color: Colors.deepOrange, size: 14,),
                    Icon(Icons.star, color: Color(0xFFF2C1A6), size: 14,),
                  ],
                ),
                TextComponents(txt: ProductReview, textSize: 14, fw: FontWeight.bold, family: "Bold",)
              ],
            ),
          ),
          h(5),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextComponents(txt: ProductPricePromo, fw: FontWeight.bold, family: "Bold", textSize: 18),
              w(10),
              Text(
                ProductPricePromo, 
                style: const TextStyle(fontFamily: "Regular", fontSize: 15, decoration: TextDecoration.lineThrough, color: Colors.grey, fontWeight: FontWeight.bold)
              )
            ],
          ),
          h(10),
          Container(
            height: 35,
            margin: EdgeInsets.only(left: 15, right: 15),
            child: ButtonComponent(textButton: "Ajouter au Panier", buttonColor: mainColor)
          )
        ],
      ),
    ),
  );
}
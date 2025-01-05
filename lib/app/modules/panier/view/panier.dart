import 'package:ecom_app/app/components/button_components.dart';
import 'package:ecom_app/app/components/space.dart';
import 'package:ecom_app/app/components/text_components.dart';
import 'package:ecom_app/app/modules/checkout/view/checkout.dart';
import 'package:ecom_app/app/modules/panier/controller/panier_controller.dart';
import 'package:ecom_app/utils/colors.dart';
import 'package:flutter/material.dart';



class Panier extends StatefulWidget {
  const Panier({super.key});

  @override
  State<Panier> createState() => _PanierState();
}

class _PanierState extends State<Panier> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: TextComponents(txt: "Mon Panier", fw: FontWeight.bold, family: "Bold", textSize: 18,),
        centerTitle: true,
        actions: [
          Stack(
            children: [
              Container(
                height: 40, width: 40,
                decoration: BoxDecoration(
                  color: homeBg,
                  borderRadius: BorderRadius.circular(100)
                ),
              child: const Icon(Icons.shopping_cart, size: 30,)),
              Positioned(
                right: 0,
                top: 0,
                child: Container(
                  height: 16, width: 16,
                  decoration: BoxDecoration(
                    color: Colors.deepOrange,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Center(
                    child: TextComponents(txt: "3", color: Colors.white, textSize: 13,),
                  ),
                )
              )
            ],
          ),
          const SizedBox(
            width: 10,
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            CustomProductVox("T-shirt Homme", "Classic crew New Design", "15,00€"),
            CustomProductVox("Jean Homme", "Classix crew New Design", "35,00€"),
            CustomProductVox("Chaussures Enfant", "Classix crew New Design", "30,00€"),
            h(50),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextComponents(txt: "Total", fw: FontWeight.bold, family: "Bold",),
                TextComponents(txt: "80", fw: FontWeight.bold, family: "Bold",),
              ],
            ),
            h(30),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Checkout()));
              },
              child: ButtonComponent(textButton: "Payer", buttonColor: mainColor)
            )
          ],
        ),
      ),
    );
  }
}
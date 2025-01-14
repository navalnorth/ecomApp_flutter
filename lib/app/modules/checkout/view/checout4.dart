import 'package:ecom_app/app/components/button_components.dart';
import 'package:ecom_app/app/components/space.dart';
import 'package:ecom_app/app/components/text_components.dart';
import 'package:ecom_app/app/modules/checkout/controller/checkout_controller.dart';
import 'package:ecom_app/app/modules/checkout/view/payment_status.dart';
import 'package:ecom_app/utils/colors.dart';
import 'package:flutter/material.dart';



class Checkout4 extends StatefulWidget {
  const Checkout4({super.key});

  @override
  State<Checkout4> createState() => _Checkout4State();
}

class _Checkout4State extends State<Checkout4> {
  TextEditingController accountNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: TextComponents(txt: "Paiement", fw: FontWeight.bold, textSize: 18, family: "Bold",),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            ProgressBar(stepActuel: 4),
            h(30),

            TextComponents(txt: "Nagad", family: "Bold", fw: FontWeight.bold, textSize: 16,),
            h(50),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextComponents(txt: "Montant prncipal", fw: FontWeight.bold, textSize: 18),
                TextComponents(txt: "75€", fw: FontWeight.bold, textSize: 18),
              ],
            ),
            h(15),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextComponents(txt: "Frais de Livraison", fw: FontWeight.bold, textSize: 18),
                TextComponents(txt: "5€", fw: FontWeight.bold, textSize: 18),
              ],
            ),
            h(15),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextComponents(txt: "Montant Total", fw: FontWeight.bold, textSize: 18),
                TextComponents(txt: "80€", fw: FontWeight.bold, textSize: 18),
              ],
            ),
            h(25),

            const Divider(color: Colors.grey, height: 2,),
            h(50),

            TextComponents(txt: "Votre numéro de compte Nagad"),
            h(10),

            GestureDetector(
              onTap: () {
                FocusScope.of(context).unfocus();
              },
              child: TextField(
                controller: accountNumberController,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "01200-000000",
                ),
                keyboardType: TextInputType.number,
              ),
            ),
            h(100),

            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => PaymentStatus()));
              },
              child: ButtonComponent(textButton: "Confirmer", buttonColor: mainColor)
            )
          ],
        ),
      ),
    );
  }
}
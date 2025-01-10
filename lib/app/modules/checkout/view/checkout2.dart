import 'package:ecom_app/app/components/button_components.dart';
import 'package:ecom_app/app/components/space.dart';
import 'package:ecom_app/app/components/text_components.dart';
import 'package:ecom_app/app/modules/checkout/controller/checkout_controller.dart';
import 'package:ecom_app/app/modules/checkout/view/checkout3.dart';
import 'package:ecom_app/utils/colors.dart';
import 'package:flutter/material.dart';



class Checkout2 extends StatefulWidget {
  const Checkout2({super.key});

  @override
  State<Checkout2> createState() => _Checkout2State();
}

class _Checkout2State extends State<Checkout2> {

  List<String> methodPaiement = [
    "Bank Transfert",
    "Mobile ",
    "Cards",
    "Payoneer",
    "Amazon Hub Counter",
    "Apple Pay",
    "Google Pay",
  ];
  String? selectedPaymentMethod;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: TextComponents(txt: "Paiement", fw: FontWeight.bold, textSize: 18, family: "Bold",),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            ProgressBar(stepActuel: 2),
            h(20),

            TextComponents(txt: "Coisir moyen depaiement", textSize: 20, fw: FontWeight.bold, family: "Bold",),
            h(30),

            Container(
              height: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border:  Border.all(color: Colors.black12)
              ),
              child: ListView.builder(
                itemCount: methodPaiement.length,
                itemBuilder: (context, index) {
                return Column(
                  children: [
                    ListTile(
                    title: TextComponents(txt: methodPaiement[index]),
                    leading: Container(
                      height: 40,
                      width: 40,
                      color: greyColor2,
                    ),
                    trailing: Radio(
                      value: methodPaiement[index], 
                      groupValue: selectedPaymentMethod, 
                      onChanged: (value) {
                        setState(() {
                          selectedPaymentMethod = value;
                        });
                      }),
                    ),
                    Container(
                      height: 1,
                      width: double.infinity,
                      color: Colors.black12
                    )
                  ],
                );
              }),
            ),
            h(40),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Checkout3()));
              },
              child: ButtonComponent(textButton: "Suivant", buttonColor: mainColor)
            )

          ],
        ),
        
      ),
    );
  }
}
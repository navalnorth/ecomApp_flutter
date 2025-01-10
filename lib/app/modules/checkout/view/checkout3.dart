import 'package:ecom_app/app/components/button_components.dart';
import 'package:ecom_app/app/components/space.dart';
import 'package:ecom_app/app/components/text_components.dart';
import 'package:ecom_app/app/modules/checkout/controller/checkout_controller.dart';
import 'package:ecom_app/app/modules/checkout/view/checout4.dart';
import 'package:ecom_app/utils/colors.dart';
import 'package:flutter/material.dart';



class Checkout3 extends StatefulWidget {
  const Checkout3({super.key});

  @override
  State<Checkout3> createState() => _Checkout3State();
}

class _Checkout3State extends State<Checkout3> {
  int? selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: TextComponents(txt: "Livraison", fw: FontWeight.bold, textSize: 20,),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            ProgressBar(stepActuel: 3),
            h(20),

            TextComponents(txt: "Banques Mobiles", fw: FontWeight.bold, family: "Bold", textSize: 18,),
            h(40),

            Container(
              height: 300,
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10
                ),
                itemCount: 6,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                    child: Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                        color: selectedIndex == index ? mainColor : homeBg,
                        borderRadius: BorderRadius.circular(15)
                      ),
                    ),
                  );
                },
              ),
            ),
            h(100),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Checkout4()));
              },
              child: ButtonComponent(textButton: 'Suivant', buttonColor: mainColor)
            )
          ],
        ),
      ),
    );
  }
}
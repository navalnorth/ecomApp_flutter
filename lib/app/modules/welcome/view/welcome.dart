import 'package:ecom_app/app/components/button_components.dart';
import 'package:ecom_app/app/components/space.dart';
import 'package:ecom_app/app/components/text_components.dart';
import 'package:ecom_app/app/modules/ProductsPage/view/product_page.dart';
import 'package:ecom_app/utils/colors.dart';
import 'package:flutter/material.dart';



class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextComponents(txt: "Allons-y et go faire du shopping !", fw: FontWeight.bold, family: "Bold", textSize: 25, textAlign: TextAlign.center,),
            h(10),
            TextComponents(txt: "Trouve le ici et achète-le !", textAlign: TextAlign.center, textSize: 14,),
            h(40),
            Image.asset("assets/images/welcome.png"),
            h(40),
            InkWell(
              onTap: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ProductPage()));
              },
              child: ButtonComponent(textButton: "Commencer", buttonColor: mainColor)
            )
          ],
        ),
      ),
    );
  }
}
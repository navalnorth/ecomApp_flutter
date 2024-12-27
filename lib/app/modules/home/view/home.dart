import 'package:ecom_app/app/components/button_components.dart';
import 'package:ecom_app/app/components/text_components.dart';
import 'package:ecom_app/utils/colors.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: homeBg,
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 20, right: 20),
        color: homeBg,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            TextComponents(txt: "Welcome", textSize: 30, fw: FontWeight.bold,),
            TextComponents(txt: "MenMode Shopping House", textSize: 18),
            const SizedBox(height: 40,),
            Image.asset("assets/images/home.png"),
            const SizedBox(height: 40,),
            ButtonComponent(textButton: "S'inscrire", buttonColor: mainColor, buttonColorText: Colors.white,),
            const SizedBox(height: 20,),
            ButtonComponent(textButton: "Se Conncecter", buttonColor: loginButtonColor, buttonColorText: Colors.black,),
            const SizedBox(height: 20,),
            TextComponents(txt: "Non Merci")
          ],
        ),
      ),
    );
  }
}
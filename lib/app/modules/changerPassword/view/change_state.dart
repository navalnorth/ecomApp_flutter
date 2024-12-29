

import 'package:ecom_app/app/components/button_components.dart';
import 'package:ecom_app/app/components/space.dart';
import 'package:ecom_app/app/components/text_components.dart';
import 'package:ecom_app/app/modules/welcome/view/welcome.dart';
import 'package:ecom_app/utils/colors.dart';
import 'package:flutter/material.dart';

class ChangeState extends StatefulWidget {
  const ChangeState({super.key});

  @override
  State<ChangeState> createState() => _ChangeStateState();
}

class _ChangeStateState extends State<ChangeState> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(10),
          height: MediaQuery.of(context).size.height/2,
          width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                const Icon(Icons.check_circle, color: Colors.green, size: 150,),
                h(20),
                TextComponents(txt: "Félicitations !", fw: FontWeight.bold, family: "Bold", textSize: 35,),
                h(25),
                TextComponents(txt: "Votre compte a été bien enregisté"),
                h(50),
                InkWell(
                  onTap: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Welcome()));
                  },
                  child: ButtonComponent(textButton: "Continuer", buttonColor: mainColor)
                )
              ],
            ),
        ),
      ),
    );
  }
}
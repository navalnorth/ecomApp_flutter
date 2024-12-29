

import 'package:ecom_app/app/components/button_components.dart';
import 'package:ecom_app/app/components/form_component.dart';
import 'package:ecom_app/app/components/space.dart';
import 'package:ecom_app/app/components/text_components.dart';
import 'package:ecom_app/app/modules/connexion/view/login.dart';
import 'package:ecom_app/app/modules/otp/view/otp.dart';
import 'package:ecom_app/utils/colors.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(15),
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              TextComponents(txt: "Mot de Passe Oublié", fw: FontWeight.bold, textSize: 25, family: "Bold",),
              h(20),
              TextComponents(
                txt: "Pas de problème ! Ca arrie. Veuillez entrer votre email lié à votre compte", textAlign: TextAlign.center
              ),
              h(40),
              Image.asset("assets/images/forgot.png", scale: 0.8,),
              h(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextComponents(txt: 'Email / Phone', fw: FontWeight.bold,),
                ],
              ),
              FormComponent(hide: false, textInputType: TextInputType.emailAddress,),
              h(20),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => OTP()));
                },
                child: ButtonComponent(textButton: "Envoyer", buttonColor: mainColor)
              ),
              h(20),
              InkWell(
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (builder) => Login()));
                },
                child: TextComponents(txt: "Revenir à la connexion"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
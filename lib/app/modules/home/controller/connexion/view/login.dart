import 'package:ecom_app/app/components/form_component.dart';
import 'package:ecom_app/app/components/space.dart';
import 'package:ecom_app/app/components/text_components.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Container(
      padding: const EdgeInsets.only(left: 20, right: 20),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: TextComponents(txt: "Se Connecter", fw: FontWeight.bold, textSize: 25, family: "Bold",)
            ),
            h(40),
            TextComponents(txt: "Email / Téléphone", textSize: 17,),
            h(10),
            FormComponent(),

            h(20),
            TextComponents(txt: "Mot de Passe", textSize: 17,),
            h(10),
            FormComponent(hide: true, textInputType: TextInputType.visiblePassword,)
          ],
        ),
      ),
    );
  }
}
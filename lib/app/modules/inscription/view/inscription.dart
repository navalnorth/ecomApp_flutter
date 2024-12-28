import 'package:ecom_app/app/components/button_components.dart';
import 'package:ecom_app/app/components/form_component.dart';
import 'package:ecom_app/app/components/space.dart';
import 'package:ecom_app/app/components/text_components.dart';
import 'package:ecom_app/utils/colors.dart';
import 'package:flutter/material.dart';

class Inscription extends StatefulWidget {
  const Inscription({super.key});

  @override
  State<Inscription> createState() => _InscriptionState();
}

class _InscriptionState extends State<Inscription> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Container(
        padding: const EdgeInsets.only(left: 20, right: 20),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: TextComponents(txt: "Inscris Toi Maintenant !", fw: FontWeight.bold, textSize: 25, family: "Bold",)
              ),
        
              h(40),
              TextComponents(txt: "Email / Téléphone", textSize: 17,),
              h(10),
              FormComponent(),
        
              h(40),
              TextComponents(txt: "Téléphone", textSize: 17,),
              h(10),
              FormComponent(textInputType: TextInputType.phone,),
        
              h(20),
              TextComponents(txt: "Mot de Passe", textSize: 17,),
              h(10),
              FormComponent(hide: true, textInputType: TextInputType.visiblePassword,),
              h(20),
        
              h(20),
              ButtonComponent(textButton: "S'inscrire", buttonColor: mainColor),
              h(80),
        
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: Container(
                      height: 1,
                      width: 120,
                      color: Colors.black
                    ),
                  ),
                  w(20),
                  TextComponents(txt: 'Ou Continuer Avec', textAlign: TextAlign.center,),
                  w(20),
                  Expanded(
                    child: Container(
                      height: 1,
                      width: 120,
                      color: Colors.black
                    ),
                  ),
                ],
              ),
              h(20),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 60,
                      decoration: BoxDecoration(
                        border: Border.all( color: Colors.blue),
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Center(
                        child: TextComponents(txt: "Google"),
                      ),
                    ),
                  ),
                  w(20),
                  Expanded(
                    child: Container(
                      height: 60,
                      decoration: BoxDecoration(
                        border: Border.all( color: Colors.blue),
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Center(
                        child: TextComponents(txt: "Facebook"),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
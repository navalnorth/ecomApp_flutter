import 'package:ecom_app/app/components/button_components.dart';
import 'package:ecom_app/app/components/form_component.dart';
import 'package:ecom_app/app/components/space.dart';
import 'package:ecom_app/app/components/text_components.dart';
import 'package:ecom_app/app/modules/changerPassword/view/change_state.dart';
import 'package:ecom_app/utils/colors.dart';
import 'package:flutter/material.dart';



class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordConfrmController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Column(
                  children: [
                    TextComponents(txt: "Entrez le nouveau Mot de Passe", textSize: 22, fw: FontWeight.bold, family: 'Bold', textAlign: TextAlign.center,),
                    h(20),
                    TextComponents(txt: "Votre nouveau mot de passe doit être différent de celui qu vous utilisez", textSize: 15, textAlign: TextAlign.center,),
                  ],
                ),
              ),
              h(35),
              TextComponents(txt: "Mot de Passe", textAlign: TextAlign.left,),
              h(5),
              FormComponent(hide: true, textInputType: TextInputType.visiblePassword, controller: passwordController,),
              TextComponents(txt: "Minimum 8 caractères", textSize: 12,),
              h(20),
              TextComponents(txt: "Valider le mot de passe", textAlign: TextAlign.left,),
              h(5),
              FormComponent(hide: true, textInputType: TextInputType.visiblePassword, controller: passwordConfrmController,),
              TextComponents(txt: "Les mots de passe doivent correspondre", textSize: 12,),
              h(25),
              InkWell(
                onTap: () {
                  if (passwordController.text != passwordConfrmController.text) {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      backgroundColor: Colors.red,
                      content: TextComponents(txt: "Les Mot de Passes doivent être identiques", color: Colors.white,)
                    ));
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    backgroundColor: Colors.green,
                    content: TextComponents(txt: "Mot de passe réinitialisé avec succès", color: Colors.white,)
                  ));
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ChangeState()));
                  }
                },
                child: ButtonComponent(textButton: "Enregistrer", buttonColor: mainColor)
              )
            ],
          )
        ),
      ),
    );
  }
}
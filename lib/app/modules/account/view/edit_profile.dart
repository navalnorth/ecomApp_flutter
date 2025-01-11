import 'package:ecom_app/app/components/button_components.dart';
import 'package:ecom_app/app/components/form_component.dart';
import 'package:ecom_app/app/components/space.dart';
import 'package:ecom_app/app/components/text_components.dart';
import 'package:ecom_app/utils/colors.dart';
import 'package:flutter/material.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: TextComponents(txt: "Editer Profil", fw: FontWeight.bold, family: 'Bold',),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 70
                ),
              ],
            ),
            h(15),

            Center(
              child: TextComponents(txt: "Ripon Ahmed", textSize: 20, fw: FontWeight.bold, textAlign: TextAlign.center,)
            ),
            h(40),

            TextComponents(txt: "E-mail", textSize: 15,),
            h(10),
            FormComponent(hide: false, textInputType: TextInputType.emailAddress,),
            h(20),

            TextComponents(txt: "Mot de Passe", textSize: 15,),
            h(10),
            FormComponent(hide: true, textInputType: TextInputType.visiblePassword,),
            h(50),

            ButtonComponent(textButton: "Eregistrer", buttonColor: mainColor)
          ],
        ),
      ),
    );
  }
}
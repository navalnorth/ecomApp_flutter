import 'package:ecom_app/app/components/button_components.dart';
import 'package:ecom_app/app/components/space.dart';
import 'package:ecom_app/app/components/text_components.dart';
import 'package:ecom_app/app/modules/changerPassword/view/change_password.dart';
import 'package:ecom_app/utils/colors.dart';
import 'package:flutter/material.dart';

class OTP extends StatefulWidget {
  const OTP({super.key});

  @override
  State<OTP> createState() => _OTPState();
}

class _OTPState extends State<OTP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.white,
      ),

      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextComponents(txt: 'Code de vérification', family: "Bold", fw: FontWeight.bold, textSize: 28, ),
              h(25),
              TextComponents( txt: "Veuillez entrer les 4 caractères envoyés vers votre email", textAlign: TextAlign.center, textSize: 14),
              h(30),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(4, (index) {
                  return Container(
                    height: 60, width: 60,

                    child: TextField(
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      decoration: const InputDecoration( border: OutlineInputBorder(), counterText: ''),
                      maxLength: 1,

                      onChanged: (value) {
                        if (value.isNotEmpty && value.length == 1 && index < 3) {
                          FocusScope.of(context).nextFocus();
                        } else if (value.isEmpty && index > 0) {
                          FocusScope.of(context).previousFocus();
                        }
                      },
                    ),
                  );
                }),
              ),
              h(20),

              TextComponents(txt: "Le code expire dans : 2:30"),
              h(20),

              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ChangePassword()));
                },
                child: ButtonComponent(textButton: "Vérifier", buttonColor: mainColor),
              ),
              h(20),

              GestureDetector(
                onTap: () {},
                child: TextComponents(txt: "Code pas reçu ? Renvoyer"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

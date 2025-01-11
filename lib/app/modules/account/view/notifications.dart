import 'package:ecom_app/app/components/button_components.dart';
import 'package:ecom_app/app/components/space.dart';
import 'package:ecom_app/app/components/text_components.dart';
import 'package:ecom_app/app/modules/account/view/accout.dart';
import 'package:ecom_app/utils/colors.dart';
import 'package:flutter/material.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({super.key});

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: TextComponents(txt: "Notifications", fw: FontWeight.bold, textSize: 20,),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 70,
                    backgroundColor: homeBg,
                    child: Center(
                      child: Icon(Icons.notifications_off_outlined, size: 80, color: mainColor,),
                    ),
                  ),
                ],
              ),
              h(20),

              TextComponents(txt: "Pas de notifications", textSize: 30, fw: FontWeight.bold,),
              h(15),
              
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: TextComponents(txt: "Il n'y a pas de notifcation \nà vous montrer actuellement", textSize: 20, textAlign: TextAlign.center,),
              ),
              h(50),

              Padding(
                padding: const EdgeInsets.all(20),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Account()));
                  },
                  child: ButtonComponent(textButton: "Revenir au profil", buttonColor: mainColor)
                ),
              )
            ],
            
          ),
      ),
    );
  }
}
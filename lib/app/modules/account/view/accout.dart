import 'package:ecom_app/app/components/space.dart';
import 'package:ecom_app/app/components/text_components.dart';
import 'package:ecom_app/app/modules/account/view/edit_profile.dart';
import 'package:ecom_app/app/modules/account/view/notifications.dart';
import 'package:ecom_app/utils/colors.dart';
import 'package:flutter/material.dart';



class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: TextComponents(txt: "Compte", fw: FontWeight.bold, textSize: 20,),
        centerTitle: true,
      ),
      body: 
        ListView(
          padding: EdgeInsets.all(20),
          children: [
            h(15),

            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => EditProfile()));
              },
              child: Container(
                decoration: BoxDecoration(
                  color: greyColor2,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: ListTile(
                  title: TextComponents(txt: "Editer Profil", textSize: 18,),
                  leading: Icon(Icons.person),
                ),
              ),
            ),
            
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => NotificationsPage()));
              },
              child: ListTile(
                title: TextComponents(txt: "Notifications", textSize: 18,),
                leading: Icon(Icons.notifications),
              ),
            ),

            ListTile(
              title: TextComponents(txt: "Géolocalisation des colis", textSize: 18,),
              leading: Icon(Icons.track_changes),
            ),
          
            ListTile(
              title: TextComponents(txt: "Langues", textSize: 18,),
              leading: Icon(Icons.language),
            ),
          
            ListTile(
              title: TextComponents(txt: "Devise", textSize: 18,),
              leading: Icon(Icons.currency_exchange),
              trailing: TextComponents(txt: "EUR")
            ),
          
            ListTile(
              title: TextComponents(txt: "Paramètres", textSize: 18,),
              leading: Icon(Icons.settings),
            ),
          
            ListTile(
              title: TextComponents(txt: "Aide", textSize: 18,),
              leading: Icon(Icons.help),
            ),
          
            ListTile(
              title: TextComponents(txt: "Conditions d'utilisation", textSize: 18,),
              leading: Icon(Icons.privacy_tip),
            ),
          
            ListTile(
              title: TextComponents(txt: "Déconnexion", textSize: 18,),
              leading: Icon(Icons.logout),
            ),
          
          ],
        )
    );
  }
}
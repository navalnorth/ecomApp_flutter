import 'package:ecom_app/app/components/button_components.dart';
import 'package:ecom_app/app/components/form_component.dart';
import 'package:ecom_app/app/components/space.dart';
import 'package:ecom_app/app/components/text_components.dart';
import 'package:ecom_app/app/modules/checkout/controller/checkout_controller.dart';
import 'package:ecom_app/app/modules/checkout/view/checkout2.dart';
import 'package:ecom_app/utils/colors.dart';
import 'package:flutter/material.dart';



class Checkout extends StatefulWidget {
  const Checkout({super.key});

  @override
  State<Checkout> createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  List<String> cities= ['Tourcoing', 'Roubaix', "Lille"];
  String selectCity = 'Tourcoing';

  List<String> ditrict= ['Nord', 'Pas-de-Calais', "Somme"];
  String selectDistrict = 'Nord';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: TextComponents(txt: "Checkout", fw: FontWeight.bold, textSize: 18, family: "Bold",),
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProgressBar(stepActuel: 1,),
            h(20),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextComponents(txt: "Adresse de Livraison", fw: FontWeight.bold, textSize: 30,),
              ],
            ),
            h(30),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextComponents(txt: "Prénom"),
                h(10),
                FormComponent(textInputType: TextInputType.name,),
                h(30),

                TextComponents(txt: "Ville"),
                h(10),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black12),
                    borderRadius: BorderRadius.circular(5)
                  ),
                  child: DropdownButton(
                    value: selectCity,
                    isExpanded: true,
                    hint: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextComponents(txt: 'Choisir la ville', color: Colors.grey,),
                    ),
                    items: cities.map<DropdownMenuItem<String>>((String valeur) {
                      return DropdownMenuItem<String>(
                        value: valeur,
                        child: TextComponents(txt: valeur),
                      );
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        selectCity=value!;
                      });
                    },
                    underline: SizedBox.shrink(),
                  ),
                ),
                h(30),

                TextComponents(txt: "Code Postale"),
                h(10),
                FormComponent(textInputType: TextInputType.number,),
                h(30),

                TextComponents(txt: "Département"),
                h(10),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black12),
                    borderRadius: BorderRadius.circular(5)
                  ),
                  child: DropdownButton(
                    value: selectDistrict,
                    isExpanded: true,
                    hint: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextComponents(txt: 'Choisir le Département', color: Colors.grey,),
                    ),
                    items: ditrict.map<DropdownMenuItem<String>>((String valeur) {
                      return DropdownMenuItem<String>(
                        value: valeur,
                        child: TextComponents(txt: valeur),
                      );
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        selectDistrict=value!;
                      });
                    },
                    underline: SizedBox.shrink(),
                  ),
                ),
                h(30),

                TextComponents(txt: "Téléphone"),
                h(10),
                FormComponent(textInputType: TextInputType.number,),
                h(30),

                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Checkout2()));
                  },
                  child: ButtonComponent(textButton: "Suivant", buttonColor: mainColor)
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
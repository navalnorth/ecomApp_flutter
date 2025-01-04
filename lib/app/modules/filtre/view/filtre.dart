import 'package:ecom_app/app/components/button_components.dart';
import 'package:ecom_app/app/components/space.dart';
import 'package:ecom_app/app/components/text_components.dart';
import 'package:ecom_app/utils/colors.dart';
import 'package:flutter/material.dart';



class Filtre extends StatefulWidget {
  const Filtre({super.key});

  @override
  State<Filtre> createState() => _FiltreState();
}

class _FiltreState extends State<Filtre> {

  bool all = true;
  bool nike = false;
  bool bata = false;
  bool adidas = false;

  bool allGender = true;
  bool men = false;
  bool kids = false;

  bool allSize = true;
  bool size1 = false;
  bool size2 = false;
  bool size3 = false;
  bool size4 = false;

  final List<String> categories = [
    "Choisissez",
    "T-shirt",
    "Jeans",
    "Chaussures",
    "Pyjama",
    "Manteaux",
    "Accessoires",
  ];

  String selectedValue = 'Choisissez';
  double valeurActuelle = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: TextComponents(txt: "Filtres", fw: FontWeight.bold, family: "Bold", textSize: 19,),
        actions: [
          const Icon(Icons.delete),
          w(15)
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextComponents(txt: "Marques", fw: FontWeight.bold, family: "Bold", textSize: 16,),
            h(10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            all=true;
                            nike=bata=adidas=false;
                          });
                        },
                      child: Container(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        height: 40,
                        decoration: BoxDecoration(
                          color: all ? mainColor : Colors.white,
                          border: Border.all(color: Colors.black12),
                          borderRadius: BorderRadius.circular(100)
                        ),
                        child: Center(
                          child: TextComponents(txt: "Tout", color: all ? Colors.white : Colors.black, fw: FontWeight.bold, family: "Bold",),
                        ),
                      ),
                      ),
                      w(10),
              
                      InkWell(
                        onTap: () {
                          setState(() {
                            nike=true;
                            all=bata=adidas=false;
                          });
                        },
                      child: Container(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        height: 40,
                        decoration: BoxDecoration(
                          color: nike ? mainColor : Colors.white,
                          border: Border.all(color: Colors.black12),
                          borderRadius: BorderRadius.circular(100)
                        ),
                        child: Center(
                          child: TextComponents(txt: "Nike", color: nike ? Colors.white : Colors.black, fw: FontWeight.bold, family: "Bold",),
                        ),
                      ),
                      ),
                      w(10),
              
                      InkWell(
                        onTap: () {
                          setState(() {
                            bata=true;
                            nike=all=adidas=false;
                          });
                        },
                      child: Container(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        height: 40,
                        decoration: BoxDecoration(
                          color: bata ? mainColor : Colors.white,
                          border: Border.all(color: Colors.black12),
                          borderRadius: BorderRadius.circular(100)
                        ),
                        child: Center(
                          child: TextComponents(txt: "Bata", color: bata ? Colors.white : Colors.black, fw: FontWeight.bold, family: "Bold",),
                        ),
                      ),
                      ),
                      w(10),
              
                      InkWell(
                        onTap: () {
                          setState(() {
                            adidas=true;
                            nike=bata=all=false;
                          });
                        },
                      child: Container(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        height: 40,
                        decoration: BoxDecoration(
                          color: adidas ? mainColor : Colors.white,
                          border: Border.all(color: Colors.black12),
                          borderRadius: BorderRadius.circular(100)
                        ),
                        child: Center(
                          child: TextComponents(txt: "Adidas", color: adidas ? Colors.white : Colors.black, fw: FontWeight.bold, family: "Bold",),
                        ),
                      ),
                      ),
                      w(10),
                    ],
                  ),
            ),
            h(30),

            TextComponents(txt: "Marques", fw: FontWeight.bold, family: "Bold", textSize: 16,),
            h(10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            allGender=true;
                            men=kids=false;
                          });
                        },
                      child: Container(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        height: 40,
                        decoration: BoxDecoration(
                          color: allGender ? mainColor : Colors.white,
                          border: Border.all(color: Colors.black12),
                          borderRadius: BorderRadius.circular(100)
                        ),
                        child: Center(
                          child: TextComponents(txt: "Tout", color: allGender ? Colors.white : Colors.black, fw: FontWeight.bold, family: "Bold",),
                        ),
                      ),
                      ),
                      w(10),
              
                      InkWell(
                        onTap: () {
                          setState(() {
                            men=true;
                            kids=allGender=false;
                          });
                        },
                      child: Container(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        height: 40,
                        decoration: BoxDecoration(
                          color: men ? mainColor : Colors.white,
                          border: Border.all(color: Colors.black12),
                          borderRadius: BorderRadius.circular(100)
                        ),
                        child: Center(
                          child: TextComponents(txt: "Hommes", color: men ? Colors.white : Colors.black, fw: FontWeight.bold, family: "Bold",),
                        ),
                      ),
                      ),
                      w(10),
              
                      InkWell(
                        onTap: () {
                          setState(() {
                            kids=true;
                            men=allGender=false;
                          });
                        },
                      child: Container(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        height: 40,
                        decoration: BoxDecoration(
                          color: kids ? mainColor : Colors.white,
                          border: Border.all(color: Colors.black12),
                          borderRadius: BorderRadius.circular(100)
                        ),
                        child: Center(
                          child: TextComponents(txt: "Bata", color: kids ? Colors.white : Colors.black, fw: FontWeight.bold, family: "Bold",),
                        ),
                      ),
                      ),
                    ],
                  ),
            ),
            h(30),

            TextComponents(txt: "Choisir produit", fw: FontWeight.bold, family: "Bold", textSize: 16),
            h(10),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black38),
                borderRadius: BorderRadius.circular(20),
              ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton(
                  value: selectedValue,
                  borderRadius: BorderRadius.circular(20),
                  isExpanded: true,
                  items: categories.map((String item) {
                    return DropdownMenuItem<String>(
                      value: item,
                      child: Text(item),
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      selectedValue = value!;
                    });
                  },
                ),
              ),
            ),
            h(30),

            TextComponents(txt: "Choisir taille", fw: FontWeight.bold, family: "Bold", textSize: 16),
            h(10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            allSize=true;
                            size1=size2=size3=size4=false;
                          });
                        },
                      child: Container(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        height: 40,
                        decoration: BoxDecoration(
                          color: allSize ? mainColor : Colors.white,
                          border: Border.all(color: Colors.black12),
                          borderRadius: BorderRadius.circular(100)
                        ),
                        child: Center(
                          child: TextComponents(txt: "Tout", color: allSize ? Colors.white : Colors.black, fw: FontWeight.bold, family: "Bold",),
                        ),
                      ),
                      ),
                      w(10),
              
                      InkWell(
                        onTap: () {
                          setState(() {
                            size1=true;
                            allSize=size2=size3=size4=false;
                          });
                        },
                      child: Container(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        height: 40,
                        decoration: BoxDecoration(
                          color: size1 ? mainColor : Colors.white,
                          border: Border.all(color: Colors.black12),
                          borderRadius: BorderRadius.circular(100)
                        ),
                        child: Center(
                          child: TextComponents(txt: "S", color: size1 ? Colors.white : Colors.black, fw: FontWeight.bold, family: "Bold",),
                        ),
                      ),
                      ),
                      w(10),
              
                      InkWell(
                        onTap: () {
                          setState(() {
                            size2=true;
                            allSize=size1=size3=size4=false;
                          });
                        },
                      child: Container(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        height: 40,
                        decoration: BoxDecoration(
                          color: size2 ? mainColor : Colors.white,
                          border: Border.all(color: Colors.black12),
                          borderRadius: BorderRadius.circular(100)
                        ),
                        child: Center(
                          child: TextComponents(txt: "M", color: size2 ? Colors.white : Colors.black, fw: FontWeight.bold, family: "Bold",),
                        ),
                      ),
                      ),
                      w(10),

                      InkWell(
                        onTap: () {
                          setState(() {
                            size3=true;
                            allSize=size1=size2=size4=false;
                          });
                        },
                      child: Container(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        height: 40,
                        decoration: BoxDecoration(
                          color: size3 ? mainColor : Colors.white,
                          border: Border.all(color: Colors.black12),
                          borderRadius: BorderRadius.circular(100)
                        ),
                        child: Center(
                          child: TextComponents(txt: "L", color: size3 ? Colors.white : Colors.black, fw: FontWeight.bold, family: "Bold",),
                        ),
                      ),
                      ),
                      w(10),

                      InkWell(
                        onTap: () {
                          setState(() {
                            size4=true;
                            allSize=size1=size2=size3=false;
                          });
                        },
                      child: Container(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        height: 40,
                        decoration: BoxDecoration(
                          color: size4 ? mainColor : Colors.white,
                          border: Border.all(color: Colors.black12),
                          borderRadius: BorderRadius.circular(100)
                        ),
                        child: Center(
                          child: TextComponents(txt: "XL", color: size4 ? Colors.white : Colors.black, fw: FontWeight.bold, family: "Bold",),
                        ),
                      ),
                      ),
                      w(10),
                    ],
                  ),
            ),
            h(30),

            TextComponents(txt: "Prix", fw: FontWeight.bold, family: "Bold", textSize: 16),
            h(10),
            Slider(
              min: 0,
                max: 100,
                divisions: 2,
                label: valeurActuelle.round().toString(),

                value: valeurActuelle,
                onChanged: (value) {
                setState(() {
                  valeurActuelle=value;
                });
                },
            ),
            h(30),

            TextComponents(txt: "Choisir couleur", fw: FontWeight.bold, family: "Bold", textSize: 16),
            h(10),
            Row(
              children: [
                const CircleAvatar(
                  backgroundColor: Colors.brown,
                  radius: 15,
                ),
                w(10),
                Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.black,
                      width: 2,
                    ),
                    color: Colors.white,
                  ),
                ),
                w(10),

                const CircleAvatar(
                  backgroundColor: Colors.black,
                  radius: 15,
                ),
                w(10),

                const CircleAvatar(
                  backgroundColor: Colors.green,
                  radius: 15,
                ),
                w(10),

                const CircleAvatar(
                  backgroundColor: Colors.orange,
                  radius: 15,
                ),
              ],
            ),
            h(30),
            ButtonComponent(textButton: "Filter", buttonColor: mainColor)
          ],
        ),
      ),
    );
  }
}
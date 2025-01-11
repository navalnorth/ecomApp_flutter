import 'package:ecom_app/app/components/space.dart';
import 'package:ecom_app/app/components/text_components.dart';
import 'package:ecom_app/app/modules/ProductsPage/controller/product_page_controller.dart';
import 'package:ecom_app/app/modules/account/view/accout.dart';
import 'package:ecom_app/app/modules/filtre/view/filtre.dart';
import 'package:ecom_app/app/modules/panier/view/panier.dart';
import 'package:ecom_app/utils/colors.dart';
import 'package:flutter/material.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        toolbarHeight: 30,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                  height: 60,
                  decoration: BoxDecoration(
                    color: greyColor,
                    borderRadius: BorderRadius.circular(100)
                  ),
                  width: MediaQuery.of(context).size.width/1.8,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      suffixIcon: Icon(Icons.search, size: 30,),
                      hintText: 'Cherchez votre produit',
                      border: InputBorder.none,
                      hintStyle: TextStyle(color: Colors.grey, fontFamily: "Bold", fontWeight: FontWeight.bold)
                    ),
                  ),
                ),

                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Panier(),));
                  },
                  child: CircleAvatar(
                    backgroundColor: greyColor,
                    radius: 30,
                    child: const Center(
                      child: Icon(Icons.shopping_bag, size: 30,),
                    ),
                  ),
                ),

                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Account(),));
                  },
                  child: CircleAvatar(
                    backgroundColor: greyColor,
                    radius: 30,
                    child: const Center(
                      child: Icon(Icons.person, size: 30,),
                    ),
                  ),
                )
              ],
            ),
            h(40),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          isMan=true;
                          isKids=false;
                        });
                      },
                    child: Container(
                      padding: const EdgeInsets.only(left: 30, right: 30),
                      height: 40,
                      decoration: BoxDecoration(
                        color: isMan ? mainColor : Colors.white,
                        border: Border.all(color: mainColor),
                        borderRadius: BorderRadius.circular(100)
                      ),
                      child: Center(
                        child: TextComponents(txt: "Hommes", color: isMan ? Colors.white : Colors.black, fw: FontWeight.bold, family: "Bold",),
                      ),
                    ),
                    ),
                    w(20),
                    InkWell(
                      onTap: () {
                        setState(() {
                          isMan=false;
                          isKids=true;
                        });
                      },
                    child: Container(
                      padding: const EdgeInsets.only(left: 30, right: 30),
                      height: 40,
                      decoration: BoxDecoration(
                        color: isKids ? mainColor : Colors.white,
                        borderRadius: BorderRadius.circular(100)
                      ),
                      child: Center(
                        child: TextComponents(txt: "Enfants", color: isKids ? Colors.white : Colors.black, fw: FontWeight.bold, family: "Bold",),
                      ),
                    ),
                    )
                  ],
                ),
                h(20),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Filtre()));
                  },
                  child: Icon(Icons.menu, size:35,)
                )
              ],
            ),
            h(30),

            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20) ),
              child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: const Image(
                image: AssetImage("assets/images/enfant.jpg"),
                fit: BoxFit.cover, 
              ),
            ),
            ),
            h(20),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextComponents(txt: "Catégories", fw: FontWeight.bold, family: "Bold", textSize: 17,),
                TextComponents(txt: "Voir tout", fw: FontWeight.bold, family: "Bold", color: mainColor, textSize: 17,)
              ],
            ),
            h(20),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                CategoryBox("T-shirt"),
                CategoryBox("Jeans"),
                CategoryBox("Chaussures"),
                CategoryBox("Pyjama"),
                CategoryBox("Manteaux"),
                CategoryBox("Accessoires"),
              ],
              ),
            ),
            h(30),

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TextComponents(txt: "Tous les produits", family: 'Bold', fw: FontWeight.bold,),
              ],
            ),
            h(20),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: List.generate(6, (index) {
                return Container(
                  width: (MediaQuery.of(context).size.width/2)-20,
                  child: ProductBox("Panjabi", "13 reviews", "30€", "40€", context),
                );
              }),
            )
          ],
        ),
      ),
    );
  }
}
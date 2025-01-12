import 'package:ecom_app/app/components/button_components.dart';
import 'package:ecom_app/app/components/space.dart';
import 'package:ecom_app/app/components/text_components.dart';
import 'package:ecom_app/app/modules/ProductsPage/controller/product_page_controller.dart';
import 'package:ecom_app/utils/colors.dart';
import 'package:flutter/material.dart';

class ProductDetail extends StatefulWidget {
  const ProductDetail({super.key});

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: TextComponents(
          txt: "Détails du produit",
          fw: FontWeight.bold,
          family: "Bold",
          textSize: 18,
        ),
        centerTitle: true,
        actions: [
          Stack(
            children: [
              Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      color: homeBg, borderRadius: BorderRadius.circular(100)),
                  child: const Icon(
                    Icons.shopping_cart,
                    size: 30,
                  )),
              Positioned(
                  right: 0,
                  top: 0,
                  child: Container(
                    height: 16,
                    width: 16,
                    decoration: BoxDecoration(
                        color: Colors.deepOrange,
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: TextComponents(
                        txt: "3",
                        color: Colors.white,
                        textSize: 13,
                      ),
                    ),
                  ))
            ],
          ),
          const SizedBox(
            width: 10,
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 300,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: greyColor2,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            h(20),
            Row(
              children: [
                Icon(Icons.star, color: Colors.deepOrange),
                Icon(Icons.star, color: Colors.deepOrange),
                Icon(Icons.star, color: Colors.deepOrange),
                Icon(Icons.star, color: Colors.deepOrange),
                Icon(Icons.star, color: Colors.deepOrange),
                w(10),
                TextComponents(txt: "(20 avis)")
              ],
            ),
            h(15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextComponents(
                  txt: "T-shirt d'homme",
                  fw: FontWeight.bold,
                  textSize: 20,
                ),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 15,
                      child: Center(
                        child: Icon(
                          Icons.favorite_border_rounded,
                          size: 18,
                        ),
                      ),
                    ),
                    w(10),
                    CircleAvatar(
                      radius: 15,
                      child: Center(
                        child: Icon(
                          Icons.share,
                          size: 18,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
            h(10),
            TextComponents(
                txt:
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
            h(15),
            Row(children: [
              Text("15€",
                  style: const TextStyle(
                      fontFamily: "Regular",
                      fontSize: 17,
                      decoration: TextDecoration.lineThrough,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold)),
              w(10),
              TextComponents(
                txt: '10€',
                fw: FontWeight.bold,
                textSize: 20,
              )
            ]),
            h(15),
            Divider(color: Colors.grey, height: 2),
            h(15),
            TextComponents(
              txt: "Choisir la taille",
              fw: FontWeight.bold,
              textSize: 18,
            ),
            h(15),
            Row(
              children: [
                Container(
                  height: 35,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.black12)),
                  child: Center(
                    child: TextComponents(txt: "S"),
                  ),
                ),
                w(10),
                Container(
                  height: 35,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.black12)),
                  child: Center(
                    child: TextComponents(txt: "M"),
                  ),
                ),
                w(10),
                Container(
                  height: 35,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.black12)),
                  child: Center(
                    child: TextComponents(txt: "L"),
                  ),
                ),
                w(10),
                Container(
                  height: 35,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.black12)),
                  child: Center(
                    child: TextComponents(txt: "XL"),
                  ),
                ),
                w(10),
              ],
            ),
            TextComponents(
                txt: "Choisir la couler", fw: FontWeight.bold, textSize: 18),
            h(15),
            DefaultTabController(
                length: 3,
                child: Column(
                  children: [
                    const TabBar(tabs: [
                      Tab(text: 'Description'),
                      Tab(text: 'Avis'),
                      Tab(text: 'Politique de retour'),
                    ]),
                    Container(
                      height: 400,
                      child: TabBarView(children: [
                        Center(
                          child: TextComponents(txt: "Contenu Descripton"),
                        ),
                        Center(
                          child: TextComponents(txt: "Contenu Avis"),
                        ),
                        Center(
                          child: TextComponents(
                              txt: "Contenu Politique de retour"),
                        ),
                      ]),
                    )
                  ],
                )),
            ButtonComponent(
                textButton: "Ajouter au panier", buttonColor: mainColor),
            h(20),
            TextComponents(
              txt: "Tu pourrais aussi aimer",
              fw: FontWeight.bold,
              textSize: 17,
            ),
            h(20),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ProductBox("T-shirt", "12 avis", "15", "10", context),
                ProductBox("Jacket", "12 avis", "30", "25", context),
              ],
            )

          ],
        ),
      ),
    );
  }
}

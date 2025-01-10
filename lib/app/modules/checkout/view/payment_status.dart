import 'package:ecom_app/app/components/button_components.dart';
import 'package:ecom_app/app/components/space.dart';
import 'package:ecom_app/app/components/text_components.dart';
import 'package:ecom_app/app/modules/ProductsPage/view/product_page.dart';
import 'package:ecom_app/utils/colors.dart';
import 'package:flutter/material.dart';



class PaymentStatus extends StatefulWidget {
  const PaymentStatus({super.key});

  @override
  State<PaymentStatus> createState() => _PaymentStatusState();
}

class _PaymentStatusState extends State<PaymentStatus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: TextComponents(txt: "Paiement", fw: FontWeight.bold, textSize: 18,),
        centerTitle: true,
      ),
      body: Center(
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(100)
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Icon(Icons.check, size: 100, color: Colors.white,),
              ),
            ),
            h(20),

            TextComponents(txt: "Paiement Réussi !", fw: FontWeight.bold, textSize: 25,),
            h(15),
            
            TextComponents(txt: "Merci pour vore acahat", fw: FontWeight.normal, textSize: 14,),
            h(100),

            Padding(
              padding: const EdgeInsets.all(20),
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ProductPage()));
                },
                child: ButtonComponent(textButton: "Reveir à l'accueil", buttonColor: mainColor)
              ),
            )

          ],
        ),
      ),
    );
  }
}
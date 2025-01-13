import 'package:ecom_app/app/components/text_components.dart';
import 'package:ecom_app/app/modules/ProductsPage/controller/product_page_controller.dart';
import 'package:flutter/material.dart';



class CategoryDetail extends StatefulWidget {
  final String productName;

  const CategoryDetail({
    super.key,
    required this.productName
  });

  @override
  State<CategoryDetail> createState() => _CategoryDetailState();
}

class _CategoryDetailState extends State<CategoryDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: TextComponents(txt: widget.productName, textSize: 18, fw: FontWeight.bold,),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
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
import 'package:ecom_app/app/components/text_components.dart';
import 'package:ecom_app/app/modules/Splash/controller/controller.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  void initState() {
    time(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          child: Column(
            children: [
              Image.asset("assets/images/logo.png", scale: 0.8,),
              TextComponents(txt: "ManMode", textSize: 30,fw: FontWeight.bold),
              TextComponents(txt: "FashionHouse", textSize: 20),
            ],
          ),
        ),
      ),
    );
  }
}
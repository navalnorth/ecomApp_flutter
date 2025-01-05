import 'package:ecom_app/utils/colors.dart';
import 'package:flutter/material.dart';

class ProgressBar extends StatelessWidget {
  final int stepActuel;

  const ProgressBar({
    required this.stepActuel
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(4, (index) {
          return Row(
            children: [
              Container(
                height: 30, width: 30,
                decoration: BoxDecoration(
                  color: index < stepActuel ? mainColor : homeBg,
                  borderRadius: BorderRadius.circular(20)
                ),
              ),
              if(index < 3) 
                Container(
                  height: 2,
                  width: 50,
                  color: homeBg,
                )
            ],
          );
        },
      )
    );
  }
}
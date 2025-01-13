import 'package:flutter/material.dart';

class FormComponent extends StatelessWidget {

  final TextInputType textInputType;
  final bool hide;
  final TextEditingController? controller;

  FormComponent({
    this.hide=false,
    this.textInputType=TextInputType.emailAddress,
    this.controller
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        suffixIcon: hide ? Icon(Icons.remove_red_eye_rounded) : null
      ),
      keyboardType: textInputType,
      obscureText: hide,
    );
  }
  
}
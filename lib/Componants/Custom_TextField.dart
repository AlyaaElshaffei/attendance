import 'package:flutter/material.dart';
import 'package:myapp/Constants/Conastant.dart';

class CustomTextfield extends StatelessWidget {
  CustomTextfield({required this.hintText, required this.text,required this.icon});

  String? hintText;
  String? text;
  Icon icon;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        prefixIcon: icon,
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: letterColor),
        ),
        hintStyle: const TextStyle(color: letterColor),
        hintText: hintText,
        label: Text(
          text!,
          style: const TextStyle(color: Colors.white, fontSize: 12),
        ),
        enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
          color: letterColor,
        )),
        border: const OutlineInputBorder(
          borderSide: BorderSide(color: letterColor),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:myapp/Constants/Conastant.dart';

class Custombutton extends StatelessWidget {

   Custombutton({required this.title});

   String? title;

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: double.infinity,
      height: 50,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color:letterColor,
      ),
      child:  Center(
        child: Text(title!,
            style: const TextStyle(
              color: PrimaryColor,
              fontSize: 26,
            )),
      ),
    );
  }
}

import 'package:flutter/material.dart';


class CustomGeneralButton extends StatelessWidget {
  const CustomGeneralButton(
      {super.key,
      @required this.text,
      @required this.buttonColor,
      @required this.onTap});
  final String? text;
  final Color? buttonColor;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
          height: 60,
          width: 150,
          decoration: BoxDecoration(
            color: buttonColor!,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: Text(
              text!,
              style: const TextStyle(
                  color: Color(0xffffffff),
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ));
  }
}

class CustomButtonsWithIcons extends StatelessWidget {
  const CustomButtonsWithIcons(
      {super.key,
      @required this.text,
      @required this.onTap,
      @required this.iconData, 
      @required this.color
       });

  final String? text;
  final VoidCallback? onTap;
  final IconData? iconData;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60,
        width: 150,
        decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Color.fromARGB(57, 219, 214, 214))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              iconData!,
               color: color!,
            ),

            
            
            Text(
              text!,
              style: const TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 25,
                  fontWeight: FontWeight.w400),
                  textAlign: TextAlign.left,
            )
          ],
        ),
      ),
    );
  }
}

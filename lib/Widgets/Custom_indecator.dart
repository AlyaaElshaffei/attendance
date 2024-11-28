import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:myapp/Constants/Conastant.dart';


class CustomIndicator extends StatelessWidget {
  const CustomIndicator({super.key, @required this.dotIndex});
  final int? dotIndex;
  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
      dotsCount: 3,
      position: dotIndex!,
      decorator: const DotsDecorator(
        activeColor: PrimaryColor,
        color: Colors.transparent,
        shape: CircleBorder(side: BorderSide(color: PrimaryColor)),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:myapp/Constants/Conastant.dart';
import 'package:myapp/Widgets/splash_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: PrimaryColor,
      body: Splashbody(),
    );
  }
}

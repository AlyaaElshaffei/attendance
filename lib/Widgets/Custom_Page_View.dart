import 'package:flutter/material.dart';
import 'package:myapp/Widgets/page_View.dart';


class CustomPageView extends StatelessWidget {
  const CustomPageView({super.key,@required this.pageController});

  final PageController? pageController;

  @override
  Widget build(BuildContext context) {
    return PageView(

      controller:pageController ,

      children:  const [
        
        PageViewItem(
          image: "assets/images/Page.png",
          title: "Welcome ",
          subtitle: "System designed to simplify attendance management",
        ),

         PageViewItem(
          image: "assets/images/Page.png",
          title: "What does program offer ?",
          subtitle: "System helps you efficiently monitor students attendance and absences with ease and accuracy",
        ),

         PageViewItem(
          image: "assets/images/Page.png",
          title: "Ready to Get Started ?",
          subtitle: "Begian by adding your information and Enjoy a seamless attendance management experience!",
        )
      ],
    );
  }
}
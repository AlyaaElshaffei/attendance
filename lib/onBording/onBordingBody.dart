import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:myapp/Componants/GeneralButton.dart';
import 'package:myapp/Constants/Conastant.dart';
import 'package:myapp/Widgets/Custom_Page_View.dart';
import 'package:myapp/Widgets/Custom_indecator.dart';
import 'package:myapp/pages/Category.dart';
import 'package:myapp/pages/Login.dart';

class OnBoardinBody extends StatefulWidget {
  const OnBoardinBody({super.key});

  @override
  State<OnBoardinBody> createState() => _OnBoardinBodyState();
}

class _OnBoardinBodyState extends State<OnBoardinBody> {
  PageController? pageController;

  @override
  void initState() {
    pageController = PageController(
      initialPage: 0,
    )..addListener(
        () {
          setState(() {});
        },
      );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      CustomPageView(pageController: pageController!),
      Positioned(
        top: 470,
        left: 168,
        child: CustomIndicator(
            dotIndex:
                pageController!.hasClients ? pageController?.page?.toInt() : 0),
      ),
      Visibility(
        visible: pageController!.hasClients
            ? (pageController?.page == 2 ? false : true)
            : true,
        child: Positioned(
          top: 30,
          right: 32,
          child: GestureDetector(
            onTap: () {
              // عند النقر على "Skip"، الانتقال إلى صفحة التسجيل
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Category()),
              );
            },
            child: const Text(
              "Skip",
              style: TextStyle(
                color: Color(0xff898989),
                fontSize: 26,
              ),
            ),
          ),
        ),
      ),
      Positioned(
          bottom: 100,
          left: 125,
          child: CustomGeneralButton(
              buttonColor: PrimaryColor,
              text: pageController!.hasClients
                  ? (pageController?.page == 2 ? "Get Started" : "Next")
                  : "Next",
              onTap: () {
                if (pageController!.page! < 2) {
                  pageController?.nextPage(
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeIn);
                } else {
                  Get.to(() => const Login(),
                      transition: Transition.rightToLeft,
                      duration: const Duration(milliseconds: 500));
                }
              })),
    ]);
  }
}

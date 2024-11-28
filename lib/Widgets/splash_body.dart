import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:myapp/onBording/onBordingView.dart';


class Splashbody extends StatefulWidget {
  const Splashbody({super.key});

  @override
  State<Splashbody> createState() => _SplashbodyState();
}

class _SplashbodyState extends State<Splashbody>
    with SingleTickerProviderStateMixin {
  AnimationController? animationController;
  Animation? fadingAnimation;

  @override
  void initState() {
    animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1000));
    fadingAnimation =
        Tween<double>(begin: 0.2, end: 1).animate(animationController!);
    animationController?.repeat(reverse: true);
    super.initState();
    goToNextView();
  }

  @override
  void dispose() {
    animationController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    
 

    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Spacer(),

 const Image(image: AssetImage("assets/images/Page.png")),
                const Spacer(),
          AnimatedBuilder(
            animation: fadingAnimation!,
            builder: (context, _) => Opacity(
              opacity: fadingAnimation!.value,
              child: 
              
              const Text(
                "Attendance",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const Spacer(),
          // const Image(image: AssetImage("assets/images/Page.png"))
        ],
      ),
    );
  }

  void goToNextView() {
    Future.delayed(const Duration(seconds: 3), () {
      Get.to(() => const OnBoardinView(), transition: Transition.fade);
    });
  }
}

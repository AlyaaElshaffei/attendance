import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/Constants/Conastant.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';
import 'package:myapp/pages/Login.dart';

class Category extends StatelessWidget {
  const Category({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PrimaryColor,
       appBar: AppBar(
        backgroundColor: PrimaryColor,
        iconTheme: const IconThemeData(color: letterColor),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Text(
            "Choose Your Category",
            style: TextStyle(
              color: letterColor,
              fontSize: 29,
              fontFamily: 'pacifico',
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
                GestureDetector(
          onTap: () {
            // عند الضغط على الـ Container، الانتقال إلى صفحة التسجيل
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Login()),
            );
          },
          child:
              Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  color: letterColor,
                ),
                height: 150,
                width: 120,

                 child: const Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      FontAwesomeIcons.chalkboardUser,size: 40,color: PrimaryColor,
                    ),
                 Text(
            "Lecturer",
            style: TextStyle(
              color:PrimaryColor,
              fontSize: 25,
              fontFamily: 'pacifico',
            ),
          ),
                  ],
                ),
              ),
                ),

              const SizedBox(
                width: 30,
              ),

              GestureDetector(
          onTap: () {
            // عند الضغط على الـ Container، الانتقال إلى صفحة التسجيل
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Login()),
            );
          },
          child: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(12)),
              color:letterColor, // هنا يمكنك تخصيص اللون
            ),
            height: 150,
            width: 120,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  FontAwesomeIcons.graduationCap,
                  size: 40,
                  color:PrimaryColor 
                ),
                Text(
                  "Student",
                  style: TextStyle(
                    color: PrimaryColor,
                    fontSize: 25,
                    fontFamily: 'pacifico'
                  ),
                ),
              ],
            ),
          ),
          ),
          
            ],
            
          )
        ],
      ),
    );
  }
}

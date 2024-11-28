import 'package:flutter/material.dart';
import 'package:myapp/Componants/Custom_TextField.dart';
import 'package:myapp/Constants/Conastant.dart';
import 'package:myapp/pages/Login.dart';

import '../Componants/CustomButton.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PrimaryColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 30),
        child:Center(
          
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Image.asset("assets/images/Page.png", width: 60, height: 60),
            const Text(
              "Register",
              style: TextStyle(
                  color: letterColor,
                  fontSize: 37,
                  fontFamily: 'pacifico',
                  fontWeight: FontWeight.w400),
            ),
            CustomTextfield(
              hintText: 'Enter Your Name',
              text: 'User Name', icon: const Icon(Icons.person,color: letterColor,),
            ),
            const SizedBox(
              height: 16,
            ),
            CustomTextfield(
              hintText: 'Enter Your Password',
              text: 'Password', icon: const Icon(Icons.lock,color: letterColor,),
            ),
            const SizedBox(
              height: 20,
            ),
            Custombutton(
              title: "Register",
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "already have account? ",
                  style: TextStyle(
                    color: letterColor,
                    fontSize: 15,
                    fontFamily: 'pacifico',
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Login()));
                  },
                  child: const Text(
                    "Login",
                    style: TextStyle(
                      shadows: [
                        Shadow(
                          blurRadius: 3,
                          offset: Offset(0, 0),
                          color: Color.fromARGB(54, 33, 149, 243),
                        )
                      ],
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.blue,
                      height: 1.3,
                      color: Color.fromARGB(255, 94, 186, 233),
                      fontSize: 15,
                      fontFamily: 'pacifico',
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        ),
      ),
    );
  }
}

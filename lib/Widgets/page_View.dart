import 'package:flutter/material.dart';


class PageViewItem extends StatelessWidget {
  const PageViewItem({super.key, this.title, this.subtitle, this.image});

  final String? title;
  final String? subtitle;
  final String? image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
    
const SizedBox(height: 48,),
       SizedBox(height:150,
        child:Image.asset(image!),),

   const SizedBox(height: 35,),
        Text(title!,
            style: const TextStyle(
                color: Color.fromARGB(255, 2, 2, 2),
                fontSize: 26,
                fontWeight: FontWeight.bold)),

               const SizedBox(height: 18,),
               Padding(padding:const EdgeInsets.only(left: 42),
               child: 
        Text(subtitle!,
            style: const TextStyle(
              color: Color.fromARGB(171, 160, 149, 149),
              fontSize: 20, fontWeight: FontWeight.bold
            )),
               ),
      ],
    );
  }
}

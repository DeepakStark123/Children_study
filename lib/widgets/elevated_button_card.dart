// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class ElevatedButtonCard extends StatelessWidget {
  ElevatedButtonCard({
    Key? key, required this.title,this.color,this.onPressed,
  }) : super(key: key);
 
  String  title;
  Color? color;
  Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child:  Text(title,style:const TextStyle(color: Colors.white,fontSize: 25,),),
      ),
      style: ElevatedButton.styleFrom(
           primary:color,
            shape:  RoundedRectangleBorder(
              borderRadius:  BorderRadius.circular(10.0),
            ),
          ), 
          onPressed: onPressed,
      
      );
  }
}
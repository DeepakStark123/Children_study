// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class PhoneCard extends StatelessWidget {
 PhoneCard({
    Key? key,required this.assetImage ,
  }) : super(key: key);
  
  AssetImage assetImage ;
 
  @override
  Widget build(BuildContext context) {
    return Stack(
      children : [ 
      Container(
       margin: const EdgeInsets.symmetric(horizontal: 60),
        height: 460,
        decoration:  BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          border: Border.all(
             color: Colors.black,
              width: 10,
          ),
          ),
        child: Column(
          children: [
            const SizedBox(height: 10,),
            Container(
              height: 430,
              decoration: BoxDecoration(
               image: DecorationImage(
            fit:BoxFit.cover,
            image: assetImage),
            ),)
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left:90),
        child: Container(
          height:25,
          width: 180,
          decoration:  BoxDecoration(
            color: Colors.black,borderRadius: BorderRadius.circular(10),),
      ),),
      ],
    );
  }
}
// ignore_for_file: must_be_immutable
import 'package:demo/constant.dart';
import 'package:demo/screens/i_subscribe_login_signup.dart';
import 'package:demo/widgets/elevated_button_card.dart';
import 'package:flutter/material.dart';

class ISubscribeStart extends StatefulWidget {
  const ISubscribeStart({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<ISubscribeStart> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children : [
            Container(
              decoration:  const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/SPLASH.png')
                ),
              ),
            ),
           Container(
             padding: const EdgeInsets.all(10.0),
             margin: const EdgeInsets.only(top:602,left:15),
             child: ConstrainedBox(
               constraints: const BoxConstraints.tightFor(width: 310, height: 50),
               child: ElevatedButtonCard(  
                 onPressed: () {
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>const  ISubscribeLoginSignUp(),),);
                 },              
                 title: 'Next',
                 color: tElevatedColor,
               ),
             ),
           ),
          ],
        ),
      ),
    );
  }
}


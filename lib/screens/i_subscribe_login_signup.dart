// ignore_for_file: must_be_immutable
import 'package:demo/constant.dart';
import 'package:demo/screens/sign_in.dart';
import 'package:demo/screens/signup_page1.dart';
import 'package:demo/widgets/elevated_button_card.dart';
import 'package:flutter/material.dart';

class ISubscribeLoginSignUp extends StatefulWidget {
  const ISubscribeLoginSignUp({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<ISubscribeLoginSignUp> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children : [
            Container(
              decoration:  const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/LOGIN   SIGNUP.png')
                ),
              ),
            ),
           Container(
             padding: const EdgeInsets.all(10.0),
             margin: const EdgeInsets.only(top:502,left:15),
             child: ConstrainedBox(
               constraints: const BoxConstraints.tightFor(width: 310, height: 50),
               child: ElevatedButtonCard(  
                 onPressed: () {
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>const  SignIn(),),);
                 },              
                 title: 'SIGN IN',
                 color: tElevatedColor,
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
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>const  SignUpPage1(),),);
                 },              
                 title: 'SIGN UP',
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


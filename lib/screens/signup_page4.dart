import 'package:demo/constant.dart';
import 'package:demo/screens/otp_confirmation.dart';
import 'package:demo/widgets/elevated_button_card.dart';
import 'package:flutter/material.dart';

class SignUpPage4 extends StatefulWidget {
  const SignUpPage4({ Key? key }) : super(key: key);

  @override
  State<SignUpPage4> createState() => _SignUpPage4State();
}

class _SignUpPage4State extends State<SignUpPage4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children:  [  
            const  SizedBox(height: 50,),
          const  Center(child: Text('SignUp',style: TextStyle(fontSize: 30,color: Colors.black,fontWeight: FontWeight.bold),)),
          const  SizedBox(height: 200,),
           const Text('Email ID',style: TextStyle(fontWeight: FontWeight.w200,fontSize: 20),), 
           const TextField(decoration: InputDecoration(hintText: 'xyz23@gmail.com'),style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),   
           const Text('Phone No',style: TextStyle(fontWeight: FontWeight.w200,fontSize: 20),),         
           const TextField(decoration: InputDecoration(hintText: '9876543210'),style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          
           const SizedBox(height: 230,),
          ConstrainedBox(
               constraints: const BoxConstraints.tightFor(width: 310, height: 50),
               child: ElevatedButtonCard(  
                 onPressed: () {
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>const  OTPConfirmation(),),);
                 },              
                 title: 'Next',
                 color: tElevatedColor,
               ),
             ),



            ],),
        ),
      ),
    );
  }
}
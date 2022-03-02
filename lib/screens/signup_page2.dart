import 'package:demo/constant.dart';
import 'package:demo/screens/signup_page3.dart';
import 'package:demo/widgets/elevated_button_card.dart';
import 'package:flutter/material.dart';

class SignUpPage2 extends StatefulWidget {
  const SignUpPage2({ Key? key }) : super(key: key);

  @override
  State<SignUpPage2> createState() => _SignUpPage2State();
}

class _SignUpPage2State extends State<SignUpPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children:  [  
            const  SizedBox(height: 30,),
           const  Center(child: Text('SIGN UP',style: TextStyle(fontSize: 30,color: Colors.black,fontWeight: FontWeight.bold),)),
           const  SizedBox(height: 210,),
           const Text('Number Of Children',style: TextStyle(fontWeight: FontWeight.w200,fontSize: 20),),         
           const TextField(decoration: InputDecoration(hintText: 'Jenny'),style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
           const SizedBox(height:5,),    
           const Text('Child Name',style: TextStyle(fontWeight: FontWeight.w200,fontSize: 20),),
           const TextField(decoration: InputDecoration(hintText: 'Parker'),style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
           const SizedBox(height:5,),    
           const Text('Child Age',style: TextStyle(fontWeight: FontWeight.w200,fontSize: 20),),
           const TextField(decoration: InputDecoration(hintText: 'Daughter'),style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
           const SizedBox(height:5,),    
           const Text('Child Gender',style: TextStyle(fontWeight: FontWeight.w200,fontSize: 20),),
          const TextField(decoration: InputDecoration(hintText: 'Daughter'),style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
           const SizedBox(height: 70,),
          ConstrainedBox(
               constraints: const BoxConstraints.tightFor(width: 310, height: 50),
               child: ElevatedButtonCard(  
                 onPressed: () {
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>const  SignUpPage3(),),);
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
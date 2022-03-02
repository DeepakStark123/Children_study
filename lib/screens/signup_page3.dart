import 'package:demo/constant.dart';
import 'package:demo/screens/signup_page2.dart';
import 'package:demo/screens/signup_page4.dart';
import 'package:demo/widgets/elevated_button_card.dart';
import 'package:flutter/material.dart';

class SignUpPage3 extends StatefulWidget {
  const SignUpPage3({ Key? key }) : super(key: key);

  @override
  State<SignUpPage3> createState() => _SignUpPage3State();
}

class _SignUpPage3State extends State<SignUpPage3> {
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
          const  SizedBox(height: 70,),
           const Text('Country',style: TextStyle(fontWeight: FontWeight.w200,fontSize: 20),), 
           const TextField(decoration: InputDecoration(hintText: 'India'),style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),   
           const Text('City',style: TextStyle(fontWeight: FontWeight.w200,fontSize: 20),),         
           const TextField(decoration: InputDecoration(hintText: 'Noida'),style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
           const SizedBox(height:5,),    
           const Text('State',style: TextStyle(fontWeight: FontWeight.w200,fontSize: 20),),
           const TextField(decoration: InputDecoration(hintText: 'UP'),style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
           const SizedBox(height:5,),    
           const Text('Pincode',style: TextStyle(fontWeight: FontWeight.w200,fontSize: 20),),
           const TextField(decoration: InputDecoration(hintText: '201003'),style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
           const SizedBox(height:5,),    
           const Text('Street 1',style: TextStyle(fontWeight: FontWeight.w200,fontSize: 20),),
           const TextField(decoration: InputDecoration(hintText: '308'),style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
           const SizedBox(height: 5,),
           const Text('Street 2',style: TextStyle(fontWeight: FontWeight.w200,fontSize: 20),),
           const TextField(decoration: InputDecoration(hintText: '308'),style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
           const SizedBox(height: 55,),
          ConstrainedBox(
               constraints: const BoxConstraints.tightFor(width: 310, height: 50),
               child: ElevatedButtonCard(  
                 onPressed: () {
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>const  SignUpPage4(),),);
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
import 'package:demo/constant.dart';
import 'package:demo/screens/signup_page2.dart';
import 'package:demo/widgets/elevated_button_card.dart';
import 'package:flutter/material.dart';

class SignUpPage1 extends StatefulWidget {
  const SignUpPage1({ Key? key }) : super(key: key);

  @override
  State<SignUpPage1> createState() => _SignUpPage1State();
}

class _SignUpPage1State extends State<SignUpPage1> {
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
          const  CircleAvatar(
              radius:55,
              child: Image(
                fit:BoxFit.cover,
                image: AssetImage('images/user.png'),),
            ),
           const SizedBox(height: 70,),
           const Text('Parent',style: TextStyle(fontWeight: FontWeight.w200,fontSize: 20),),    
           const Text('First Name',style: TextStyle(fontWeight: FontWeight.w200,fontSize: 20),),         
           const TextField(decoration: InputDecoration(hintText: 'Jenny'),style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
           const SizedBox(height:5,),    
           const Text('Last Name',style: TextStyle(fontWeight: FontWeight.w200,fontSize: 20),),
           const TextField(decoration: InputDecoration(hintText: 'Parker'),style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
           const SizedBox(height:5,),    
           const Text('Relationship',style: TextStyle(fontWeight: FontWeight.w200,fontSize: 20),),
           const TextField(decoration: InputDecoration(hintText: 'Daughter'),style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
           const SizedBox(height:5,),    
           const Text('Percentage',style: TextStyle(fontWeight: FontWeight.w200,fontSize: 20),),
           const SizedBox(height: 55,),
          ConstrainedBox(
               constraints: const BoxConstraints.tightFor(width: 310, height: 50),
               child: ElevatedButtonCard(  
                 onPressed: () {
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>const  SignUpPage2(),),);
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
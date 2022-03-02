import 'package:demo/constant.dart';
import 'package:demo/screens/signup_page1.dart';
import 'package:demo/widgets/elevated_button_card.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({ Key? key }) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children:  [  
            const  SizedBox(height: 50,),
          const  Center(child: Text('SignIn',style: TextStyle(fontSize: 30,color: Colors.black,fontWeight: FontWeight.bold),)),
          const  SizedBox(height: 70,),
          const  CircleAvatar(
              radius:55,
              child: Image(
                fit:BoxFit.cover,
                image: AssetImage('images/user.png'),),
            ),
           const SizedBox(height: 150,),
           const Text('EMAIL/MOBILE NUMBER',style: TextStyle(fontWeight: FontWeight.w200),),
           const SizedBox(height: 10,),
           const TextField(decoration: InputDecoration(
             hintText: 'youremail@gmail.com',
             hintStyle: TextStyle(fontWeight: FontWeight.bold,),
             border: OutlineInputBorder()
           ),),
           const SizedBox(height: 10,),
              ConstrainedBox(
                constraints: const BoxConstraints.tightFor(width: 310, height: 50),
                child: ElevatedButtonCard(  
                  onPressed: () {
                    // Navigator.push(context, MaterialPageRoute(builder: (context)=>const  HomePage(),),);
                  },              
                  title: 'SIGN IN',
                  color: tElevatedColor,
                ),
              ),
           const SizedBox(height: 30,),
              Row(
               mainAxisAlignment: MainAxisAlignment.center,
                children: [
               const Text('Not a member?'),
               const SizedBox(width: 10,),
                GestureDetector(
                  onLongPress: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const  SignUpPage1(),),);
                  },
                  child:const Text('SIGNUP',style: TextStyle(color:Color(0xff7E00FC), ),)),
              ],),
            ],),
        ),
      ),
    );
  }
}
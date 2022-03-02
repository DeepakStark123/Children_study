import 'package:demo/constant.dart';
import 'package:demo/screens/fill_details.dart';
import 'package:demo/widgets/elevated_button_card.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 40,),
           const Center(child:  Text('Start App',style: TextStyle(color: Colors.purple,fontSize: 30,),)),
           const SizedBox(height: 50,),
            Stack(
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
                      decoration:const BoxDecoration(
                       image: DecorationImage(
                    fit:BoxFit.cover,
                    image: AssetImage('images/SIGNUP.png'),),
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
            ),
            const SizedBox(height: 70,),
           Padding(
            padding: const EdgeInsets.all(10.0),
            child:ElevatedButtonCard(
              title: 'Next',
              color:tElevatedColor,
              onPressed: () {
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>const  FillDetails()));
              },
          ),),
          ],
        ),
      ),
    );
  }
}
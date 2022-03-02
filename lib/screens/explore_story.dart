import 'package:demo/constant.dart';
import 'package:demo/screens/subscribe_and_enjoy.dart';
import 'package:demo/widgets/elevated_button_card.dart';
import 'package:demo/widgets/phone_card.dart';
import 'package:flutter/material.dart';

class ExploreStory extends StatefulWidget {
  const ExploreStory({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<ExploreStory> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 40,),
           const Center(child:Text('Explore Story',style: TextStyle(color: Colors.purple,fontSize: 30,),)),
           const SizedBox(height: 50,),
            PhoneCard(assetImage:const AssetImage('images/STORY 2.png'),),
            const SizedBox(height: 70,),
           Padding(
            padding: const EdgeInsets.all(10.0),
            child: ElevatedButtonCard(
              title: 'Next',
              color:tElevatedColor,
              onPressed: () {
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>const  SubscribeAndEnjoy()));
              },
          ),),
          ],
        ),
      ),
    );
  }
}
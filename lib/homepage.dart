import 'package:demo/constant.dart';
import 'package:demo/screens/screen1.dart';
import 'package:demo/widgets/elevated_button_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: const Text('HomePage'),),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 680,
            decoration: const BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage('https://blog.hubspot.com/hubfs/homepage-web-design.jpg'),),
              ),
            child:null,
          ),
          const SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ElevatedButtonCard(
              title: 'Get Sterted',
              color:tElevatedColor,
              onPressed: () {
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>const  FirstPage()));
              },
            ),
          ),
        ],
      ),
    );
  }
}
import 'package:demo/homepage.dart';
import 'package:demo/screens/screen1.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const 
MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
       '/': (context) => const HomePage(),
       '/first': (context) => const FirstPage(), 

      },
    );
  }
}
















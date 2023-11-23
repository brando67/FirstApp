import 'package:flutter/material.dart';
import 'package:brandon/Screens/home.dart';




void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: const Color.fromRGBO(60, 46, 40, 1.0),
      ),


      home: const Home(),
    );


  }
}



import 'dart:async';

import 'package:flutter/material.dart';

import 'home.dart';

class splashcreen extends StatefulWidget {
  const splashcreen({Key? key}) : super(key: key);

  @override
  _splashcreenState createState() => _splashcreenState();
}

class _splashcreenState extends State<splashcreen> {
  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 3), (){
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => homepage()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      body: Center(
        child: Text(
          "KwizzApp",
          style: TextStyle(
            fontSize: 50.0,
            color: Colors.white,
            fontFamily: "Satisfy",
          ),
        ),
      ),
    );
  }
}

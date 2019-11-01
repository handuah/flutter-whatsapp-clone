//First Screen on app start up
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/app.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  //Setting up router timing
  startTime() async {
    var _duration = new Duration(seconds: 10);
    return new Timer(_duration, mainPage);
  }

  void mainPage(){
    Navigator.of(context).pushReplacementNamed(MainPageRoute);
  }

  @override
  void initState(){
    super.initState();
    startTime();
  }
  //User interface of splashscreen
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: Colors.green,
            ),
          ),
          Center(
            child: Image.asset('assets/images/whatsapp-logo.png'),
          )
        ],
      ),
    );
  }
}
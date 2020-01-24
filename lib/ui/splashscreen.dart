


import 'dart:async';

import 'package:flutter/material.dart';
import 'login.dart';

class SplashScreenPage extends StatefulWidget {
  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  
  
 @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
       navigateFromSplash();
    });
  }


 Future navigateFromSplash () async {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginPage()));
}
  
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image:DecorationImage(
            image: AssetImage("assets/images/img_background_1.png"),
            fit: BoxFit.cover,
          ),
          
        ),
      ),
    );
  }
}
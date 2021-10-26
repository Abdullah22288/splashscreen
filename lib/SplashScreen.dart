import 'dart:async';

import 'package:flutter/material.dart';
import 'package:splashscreen/HomePage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds:3), ()=>Navigator.pushAndRemoveUntil(context,
        MaterialPageRoute(builder: (context)=>HomePage()), (route) => false));


  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 60,),
          Text('Wellcome'),
          SizedBox(height: 60,),
          Image.network('https://i.pinimg.com/236x/71/08/06/710806cd7df414684431313f0ad3cb4f.jpg'),
          CircularProgressIndicator(),
        ],
      ),
    );
  }
}

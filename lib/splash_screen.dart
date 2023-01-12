
import 'package:flutter/material.dart';
import 'dart:async';

import 'pages/login_page.dart';


class SplashScreen extends StatefulWidget {

  const SplashScreen({ Key? key }) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();
    setState((){
      navigation();
    });
  }

  navigation(){
    Future.delayed(const Duration(seconds: 3),(){
      Navigator.push(context, MaterialPageRoute(builder: (__) => const LoginPage()));
    });
  }
  

  @override
    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Colors.blue,
        body: Container(
          decoration:const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("lib/assets/images/splash_img.gif"),
              fit:BoxFit.cover,
            ),
          ),
          child: Center(
            child:  Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const <Widget>[
                Icon(
                  Icons.access_alarm_sharp,
                  size: 100,
                  color: Colors.white),
                SizedBox(height:100),
                LinearProgressIndicator(
                  color: Colors.white,
                  minHeight: 10,
                ),
              ],
            ),
          ),
        ),
      );
    }  
}
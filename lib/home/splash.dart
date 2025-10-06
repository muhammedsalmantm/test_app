import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:test_app/home/login_page.dart';

import '../test.dart';



class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  void initState() {
    Future.delayed(Duration(
        seconds: 3
    )).then((value) => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginPage())),);

    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/inmakes.png") ,
          SizedBox(height: width*0.1,),
          Image.asset("assets/images/Login_png.png")],
        ),
      ),

    );
  }
}

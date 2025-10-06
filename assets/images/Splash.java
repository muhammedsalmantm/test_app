import 'package:flutter/material.dart';
import 'package:laundry_app/laundry_app/bottombar.dart';
import 'package:laundry_app/laundry_app/homepage.dart';
import 'package:laundry_app/laundry_app/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Login_signup.dart';
import 'login_screen.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  bool isLogged=false;
  keepLogin() async {
    SharedPreferences preferences= await SharedPreferences.getInstance();
    isLogged=preferences.getBool('isLogged')??false;
    setState(() {

    });
    Future.delayed(Duration(
        seconds: 3
    )).then((value) => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => isLogged?BottomBar():LoginWelcomePage(),)),);

  }
  @override
  void initState() {
    keepLogin();
  super.initState();
  }
  @override
    Widget build(BuildContext context) {

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/images/logoo.png") ],
      ),

    );
  }
}

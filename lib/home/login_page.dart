import 'package:flutter/material.dart';
import 'package:test_app/container/custom_container.dart';
import 'package:test_app/home/dashboard_page.dart';

import '../test.dart';
import '../bottombar/Bottom_bar.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController usernameController=TextEditingController();
  final TextEditingController passwordController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
          body: Padding(
            padding:  EdgeInsets.all(width*0.04),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                Image.asset("assets/images/inmakes.png"),
                Image.asset("assets/images/Login_png.png"),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextFormField(
                      controller: usernameController,
                      style: TextStyle(color: Colors.black, fontSize: 16),
                      decoration: InputDecoration(
                        labelText: " USER NAME",
                        labelStyle: TextStyle(color: Colors.black, fontSize: 16),
                        hintText: "Enter user name",
                        hintStyle: TextStyle(color: Colors.black, fontSize: 16),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(width * 0.03),
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding:
                        EdgeInsets.symmetric(horizontal: 20, vertical: 18),
                      ),
                    ),
                    SizedBox(height: width*0.05,),
                    TextFormField(
                      controller: passwordController,
                      style: TextStyle(color: Colors.black, fontSize: 16),
                      decoration: InputDecoration(
                        labelText: " PASSWORD",
                        labelStyle: TextStyle(color: Colors.black, fontSize: 16),
                        hintText: "Enter user Password",
                        hintStyle: TextStyle(color: Colors.black, fontSize: 16),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(width * 0.03),
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding:
                        EdgeInsets.symmetric(horizontal: 20, vertical: 18),
                      ),
                    ),

                  ],
                ),
                CustomContainer(
                  title:"Login",
                  onTap: () {
                   Navigator.push(context, MaterialPageRoute(builder: (context) => BottomBar(),));
                  },),
                Text("Forgot Password?",style: TextStyle(
                  color: Colors.green,
                ),)
              ],
            ),
          ),
    );
  }
}


import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'bottombar/Bottom_bar.dart';
import 'bottombar/home_page.dart';
import 'bottombar/userdetails.dart';
import 'home/login_page.dart';
import 'home/splash.dart';

late double height;
late double width;
var currentUserName;

void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  //);
  runApp(
      DevicePreview(
        enabled:true ,
        builder: (context) => CrudApp(),)
  );
}
class CrudApp extends StatelessWidget {
  const CrudApp({super.key});

  @override
  Widget build(BuildContext context) {
    height=MediaQuery.of(context).size.height;
    width=MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus!.unfocus();
      },
      child: MaterialApp(
        theme: ThemeData(
            //scaffoldBackgroundColor: ColorConstant.whiteColor,
            textTheme: GoogleFonts.outfitTextTheme()
        ),

        debugShowCheckedModeBanner: false,
        home: Splash(),
      ),
    );
  }
}

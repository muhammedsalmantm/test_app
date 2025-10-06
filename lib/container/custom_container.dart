
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class CustomContainer extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final Color color;
  final double height;
  final double width;
  final double borderRadius;
  final Color textColor;
  final Widget? icon;
  // final BoxDecoration decoration;
  const CustomContainer({
    super.key,
    required this.title,
    required this.onTap,
    this.color = const Color(0xFF052331),
    this.height = 60,
    this.width = 300,
    this.borderRadius= 0.2,
    this.textColor= Colors.white,
    this.icon

    // required this.decoration,


  });


  @override
  Widget build(BuildContext context) {

    return  Center(
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: height,
          width: width,

          decoration: BoxDecoration(
           // border: Border.all(width: width*0.01,color: Colors.orange),
            color: color,
            boxShadow: [
              BoxShadow(
                color: Colors.white,
                offset: Offset(-5, -5),
                blurRadius: 10,
              ),
              BoxShadow(
                color: Colors.black87,
                offset: Offset(5, 5),
                blurRadius: 10,
              ),
            ],
            borderRadius: BorderRadius.circular(width*0.3),
            // border: Border.all(width: 3,color: ColorConstant.primaryColor),

          ),
          child: ListTile(
            leading: icon,
            title: Text(
              textAlign: TextAlign.center,
              title,style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: width*0.07,
              color: textColor,





            ),
            ),
          ),
        ),
      ),
    );

  }
}

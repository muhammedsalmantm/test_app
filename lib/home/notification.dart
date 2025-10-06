import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../test.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  void _showAlert(BuildContext context, String s, String y) {
    showDialog(
      context: context,
      barrierDismissible: true, // close when tap outside
      builder: (context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(width * 0.06),
          ),
          child: Container(
            padding: EdgeInsets.all(width * 0.04),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(width * 0.06),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 10,

                )
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // close button (top-right)
                Align(
                  alignment: Alignment.topRight,
                  child: InkWell(
                    onTap: () => Navigator.pop(context),
                    child:  Icon(Icons.close, color: Colors.black54),
                  ),
                ),

                SizedBox(height: width * 0.02),
               SvgPicture.asset("assets/icons/aa.svg"),

                SizedBox(height: width * 0.05),
                InkWell(
                  onTap: () {

                    Navigator.pop(context);
                  },
                  child: Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(width * 0.04),
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(width * 0.04),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Congrats! New Lead Received!",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: width * 0.045,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: width * 0.01),
                              Text(
                                "Now let’s convert it.",
                                style: TextStyle(
                                  color: Colors.white.withOpacity(0.9),
                                  fontSize: width * 0.035,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Icon(Icons.arrow_forward_ios,
                            color: Colors.white, size: 18),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Notification",
          style: TextStyle(
            color: Colors.black,
            fontSize: width * 0.06,
          ),
        ),
        centerTitle: true,
        actions: [
          SvgPicture.asset("assets/icons/notification.svg"),
          SizedBox(width: width * 0.04),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(width * 0.04),
        child: Column(
          children: [
            Expanded(
              child: ListView.separated(
                itemCount: 7,
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: () {
                      _showAlert(context,"","");
                    },
                    child: Container(
                      height: width * 0.2,
                      width: width * 1,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(width * 0.04),
                      ),
                      child: ListTile(
                        title: const Text("New Lead"),
                        subtitle: const Text("Jestin Varghese"),
                        trailing: CircleAvatar(
                          radius: width * 0.04,
                          backgroundColor: Colors.white,
                          child: SvgPicture.asset("assets/icons/arrow.svg"),
                        ),
                      ),
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    height: width * 0.08,
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

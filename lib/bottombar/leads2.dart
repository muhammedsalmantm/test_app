import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../test.dart';
import 'leads3.dart';

class Leads2 extends StatefulWidget {
  const Leads2({super.key});

  @override
  State<Leads2> createState() => _Leads2State();
}

class _Leads2State extends State<Leads2> {
  final TextEditingController textController = TextEditingController();
  String? leadStatus;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Leads"),
        centerTitle: true,
        actions: [
          Icon(Icons.search_rounded, size: width * 0.09, color: Colors.green),
          SizedBox(width: width * 0.03),
          Icon(Icons.add, size: width * 0.09),
          SizedBox(width: width * 0.03),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(width * 0.05),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextFormField(
                controller: textController,
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  labelText: "Search",
                  labelStyle: TextStyle(color: Colors.black),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(width * 0.07),
                  ),
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  suffixIcon: IconButton(
                    icon: Icon(Icons.filter_list, color: Colors.black), onPressed: () {  },

                  ),
                ),
                style: TextStyle(color: Colors.black),
              ),

              SizedBox(height: width * 0.05),

              ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 7,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: width * 0.4,
                    width: width * 1,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(width * 0.04),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(width * 0.04),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Name + Arrow
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Jestin Varghese',
                                style: TextStyle(
                                  fontSize: width * 0.045,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Leads3(),
                                    ),
                                  );
                                },
                                child: SvgPicture.asset(
                                  "assets/icons/arrow.svg",
                                ),
                              )
                            ],
                          ),

                          SizedBox(height: width * 0.02),

                          // Date + Status + Icon
                          Row(
                            children: [
                              Text(
                                'Created on 18-10-2021',
                                style: TextStyle(
                                  fontSize: width * 0.035,
                                  color: Colors.grey[600],
                                ),
                              ),
                              SizedBox(width: width * 0.02),
                              Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: width * 0.025,
                                  vertical: width * 0.01,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius:
                                  BorderRadius.circular(width * 0.01),
                                ),
                                child: Text(
                                  'New Lead',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: width * 0.03,
                                  ),
                                ),
                              ),
                              SizedBox(width: width * 0.02),
                              Container(
                                padding: EdgeInsets.all(width * 0.01),
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius:
                                  BorderRadius.circular(width * 0.01),
                                ),
                                child: Icon(
                                  Icons.facebook,
                                  color: Colors.white,
                                  size: width * 0.035,
                                ),
                              ),
                            ],
                          ),

                          Spacer(),

                          // Action Buttons
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  height: width * 0.08,
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    child: Icon(Icons.chat,
                                        color: Colors.white,
                                        size: width * 0.04),
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.teal,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                        BorderRadius.circular(width * 0.02),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: width * 0.02),
                              Expanded(
                                child: Container(
                                  height: width * 0.08,
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    child: Icon(Icons.call,
                                        color: Colors.white,
                                        size: width * 0.04),
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.orange,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                        BorderRadius.circular(width * 0.02),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: width * 0.02),
                              Expanded(
                                child: Container(
                                  height: width * 0.08,
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    child: Icon(Icons.email,
                                        color: Colors.white,
                                        size: width * 0.04),
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.blue.shade900,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                        BorderRadius.circular(width * 0.02),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(height: width * 0.05);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

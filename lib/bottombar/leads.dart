import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_app/bottombar/userdetails.dart';

import '../test.dart';

class Leads extends StatefulWidget {
  const Leads({super.key});

  @override
  State<Leads> createState() => _LeadsState();
}

class _LeadsState extends State<Leads> {
  final TextEditingController textController = TextEditingController();
  bool showSearch = false;

  String? selectedStatus ;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text("Leads"),
        centerTitle: true,
        actions: [
          InkWell(
            onTap: () {
              setState(() {
                showSearch = !showSearch;
              });
            },
            child: Icon(Icons.search_rounded, size: width * 0.09),
          ),
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
              if (showSearch)
                Padding(
                  padding: EdgeInsets.only(bottom: width * 0.04),
                  child: TextFormField(
                    controller: textController,
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      labelText: "Search",
                      labelStyle: TextStyle(color: Colors.black),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(width * 0.04),
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(Icons.filter_list, color: Colors.black),
                        onPressed: () {
                          showModalBottomSheet
                            (  backgroundColor: Colors.white,
                            isScrollControlled: true,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(width*0.1),
                                    topRight: Radius.circular(width*0.1)
                                )
                            ),

                            context: context,
                            builder: (context) {
                              return Padding(
                                padding:  EdgeInsets.all(width*0.05),
                                child: Container(
                                  height: height*0.5,
                                  width: width*1,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                    Text("Filter",style: TextStyle(
                                      fontSize: width*0.06,
                                      fontWeight: FontWeight.bold
                                    ),),
                                      TextFormField(
                                        controller: textController,
                                        cursorColor: Colors.black,
                                        decoration: InputDecoration(
                                          labelText: "Start Date",
                                          labelStyle: TextStyle(color: Colors.black),
                                          filled: true,
                                          fillColor: Colors.black12,
                                          prefixIcon: Icon(Icons.date_range),
                                          border: OutlineInputBorder(
                                            borderSide: BorderSide.none,
                                            borderRadius: BorderRadius.circular(width * 0.04),
                                          ),
                                        ),
                                      ),
                                      TextFormField(
                                        controller: textController,
                                        cursorColor: Colors.black,
                                        decoration: InputDecoration(
                                          labelText: "End Date",
                                          labelStyle: TextStyle(color: Colors.black),
                                          filled: true,
                                          fillColor: Colors.black12,
                                          prefixIcon: Icon(Icons.date_range),
                                          border: OutlineInputBorder(
                                            borderSide: BorderSide.none,
                                            borderRadius: BorderRadius.circular(width * 0.04),
                                          ),
                                        ),
                                      ),
                                      DropdownButtonFormField<String>(
                                        value: selectedStatus,
                                        items: [
                                          DropdownMenuItem(
                                            value: "Status",
                                            child: Text("Status"),
                                          ),
                                        ],
                                        onChanged: (value) {
                                          setState(() {
                                             selectedStatus = value!;
                                          });
                                        },
                                        decoration: InputDecoration(
                                          filled: true,
                                          fillColor: Colors.black12,
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(width * 0.07),
                                          ),
                                          enabledBorder: InputBorder.none,
                                          focusedBorder: InputBorder.none,
                                        ),
                                        icon: Icon(Icons.arrow_drop_down, color: Colors.black),
                                        style: TextStyle(color: Colors.black, fontSize: width * 0.04),
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          InkWell(
                                            onTap: () {
                                              Navigator.pop(context);
                                            },
                                            child: Container(
                                              height: width*0.1,
                                              width: width*0.4,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(width*0.04),
                                                border: Border.all(color: Colors.black)
                                              ),
                                              child: Center(child: Text("Reset")),
                                            ),
                                          ),
                                          InkWell(
                                            onTap: () {
                                              Navigator.pop(context);
                                              
                                            },
                                            child: Container(
                                              height: width*0.1,
                                              width: width*0.4,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(width*0.04),
                                               color: Colors.black,
                                              ),
                                              child: Center(child: Text("search",style: TextStyle(
                                                color: Colors.white
                                              ),)),
                                            ),
                                          ),
                                        ],
                                      )

                                    ],
                                  ),
                                ),
                              );
                            },);

                          setState(() {

                          });
                        },
                      ),
                    ),
                    style: TextStyle(color: Colors.black),
                  ),
                ),

              ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 7,
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => UserDetails(),));
                    },
                    child: Container(
                      height: width * 0.4,
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
                            /// Name and arrow
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
                                SvgPicture.asset("assets/icons/arrow.svg"),
                              ],
                            ),
                            SizedBox(height: width * 0.02),


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
                            Row(
                              children: [
                                Expanded(
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    child: Icon(Icons.chat,
                                        color: Colors.white, size: width * 0.04),
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.teal,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                        BorderRadius.circular(width * 0.02),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: width * 0.02),
                                Expanded(
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    child: Icon(Icons.call,
                                        color: Colors.white, size: width * 0.04),
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.orange,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                        BorderRadius.circular(width * 0.02),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: width * 0.02),
                                Expanded(
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    child: Icon(Icons.email,
                                        color: Colors.white, size: width * 0.04),
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.blue.shade900,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                        BorderRadius.circular(width * 0.02),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
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

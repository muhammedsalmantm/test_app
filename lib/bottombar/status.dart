import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_app/bottombar/tab_2Lsit.dart';

class StatusPage extends StatefulWidget {
  const StatusPage({super.key});

  @override
  State<StatusPage> createState() => _StatusPageState();
}

class _StatusPageState extends State<StatusPage> {
  List<bool> expandedList = List.generate(5, (_) => false);
  final TextEditingController textController = TextEditingController();
  bool showSearch = false;
  String selectedStatus = "Status";

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          title:  Text("Follow Up", style: TextStyle(color: Colors.black)),
          centerTitle: true,
          backgroundColor: Colors.white,
          actions: [
            InkWell(
              onTap: () {
                setState(() {
                  showSearch = !showSearch;
                });
              },
              child: Icon(Icons.search_rounded,
                  size: width * 0.09,
                  color: showSearch ? Colors.green : Colors.black),
            ),
            SizedBox(width: width * 0.05),
          ],
        ),
        body: Padding(
          padding: EdgeInsets.all(width * 0.04),
          child: Column(
            children: [
              // Tab Bar
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(width * 0.06),
                ),
                child: TabBar(
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  unselectedLabelColor: Colors.grey,
                  labelColor: Colors.green,
                  tabs:  [
                    Tab(icon: Icon(Icons.autorenew_rounded)),
                    Tab(icon: Icon(Icons.add_card)),
                    Tab(icon: Icon(Icons.beenhere_rounded)),
                  ],
                ),
              ),

              // Tab Views
              Expanded(
                child: TabBarView(
                  children: [
                    // TAB 1
                    Column(
                      children: [
                        if (showSearch)
                          Padding(
                            padding: EdgeInsets.only(bottom: width * 0.04),
                            child: TextFormField(
                              controller: textController,
                              cursorColor: Colors.black,
                              decoration: InputDecoration(
                                labelText: "Search",
                                labelStyle:
                                 TextStyle(color: Colors.black),
                                filled: true,
                                fillColor: Colors.white,
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius:
                                  BorderRadius.circular(width * 0.04),
                                ),
                                suffixIcon: IconButton(
                                  icon:  Icon(Icons.filter_list,
                                      color: Colors.black),
                                  onPressed: () {
                                    showModalBottomSheet(
                                      backgroundColor: Colors.white,
                                      isScrollControlled: true,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.only(
                                          topLeft:
                                          Radius.circular(width * 0.1),
                                          topRight:
                                          Radius.circular(width * 0.1),
                                        ),
                                      ),
                                      context: context,
                                      builder: (context) {
                                        return Padding(
                                          padding:
                                          EdgeInsets.all(width * 0.05),
                                          child: SizedBox(
                                            height: height * 0.5,
                                            width: width,
                                            child: Column(
                                              mainAxisAlignment:
                                              MainAxisAlignment
                                                  .spaceEvenly,
                                              children: [
                                                Text(
                                                  "Filter",
                                                  style: TextStyle(
                                                    fontSize: width * 0.06,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                TextFormField(
                                                  cursorColor: Colors.black,
                                                  decoration:
                                                  InputDecoration(
                                                    labelText: "Start Date",
                                                    filled: true,
                                                    fillColor: Colors.black12,
                                                    prefixIcon:  Icon(
                                                        Icons.date_range),
                                                    border:
                                                    OutlineInputBorder(
                                                      borderSide:
                                                      BorderSide.none,
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                          width * 0.04),
                                                    ),
                                                  ),
                                                ),
                                                TextFormField(
                                                  cursorColor: Colors.black,
                                                  decoration:
                                                  InputDecoration(
                                                    labelText: "End Date",
                                                    filled: true,
                                                    fillColor: Colors.black12,
                                                    prefixIcon:  Icon(
                                                        Icons.date_range),
                                                    border:
                                                    OutlineInputBorder(
                                                      borderSide:
                                                      BorderSide.none,
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                          width * 0.04),
                                                    ),
                                                  ),
                                                ),
                                                DropdownButtonFormField<
                                                    String>(
                                                  value: selectedStatus,
                                                  items:  [
                                                    DropdownMenuItem(
                                                        value: "Status",
                                                        child: Text("Status")),
                                                    DropdownMenuItem(
                                                        value: "New Lead",
                                                        child:
                                                        Text("New Lead")),
                                                    DropdownMenuItem(
                                                        value: "Follow Up",
                                                        child:
                                                        Text("Follow Up")),
                                                    DropdownMenuItem(
                                                        value: "Converted",
                                                        child:
                                                        Text("Converted")),
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
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                          width * 0.07),
                                                    ),
                                                    enabledBorder:
                                                    InputBorder.none,
                                                    focusedBorder:
                                                    InputBorder.none,
                                                  ),
                                                  icon:  Icon(
                                                      Icons.arrow_drop_down,
                                                      color: Colors.black),
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: width * 0.04,
                                                  ),
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceEvenly,
                                                  children: [
                                                    InkWell(
                                                      onTap: () {
                                                        Navigator.pop(context);
                                                      },
                                                      child: Container(
                                                        height: width * 0.1,
                                                        width: width * 0.4,
                                                        decoration:
                                                        BoxDecoration(
                                                          borderRadius:
                                                          BorderRadius
                                                              .circular(
                                                              width *
                                                                  0.04),
                                                          border: Border.all(
                                                              color: Colors
                                                                  .black),
                                                        ),
                                                        child:  Center(
                                                            child:
                                                            Text("Reset")),
                                                      ),
                                                    ),
                                                    InkWell(
                                                      onTap: () {
                                                        Navigator.pop(context);
                                                      },
                                                      child: Container(
                                                        height: width * 0.1,
                                                        width: width * 0.4,
                                                        decoration:
                                                        BoxDecoration(
                                                          borderRadius:
                                                          BorderRadius
                                                              .circular(
                                                              width *
                                                                  0.04),
                                                          color: Colors.black,
                                                        ),
                                                        child:  Center(
                                                          child: Text(
                                                            "Search",
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .white),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                )
                                              ],
                                            ),
                                          ),
                                        );
                                      },
                                    );
                                  },
                                ),
                              ),
                              style:  TextStyle(color: Colors.black),
                            ),
                          ),
                        Expanded(
                          child: ListView.separated(
                            shrinkWrap: true,
                            itemCount: 7,
                            separatorBuilder: (context, index) =>
                                SizedBox(height: width * 0.05),
                            itemBuilder: (context, index) {
                              return Container(
                                height: width * 0.4,
                                width: width,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                  BorderRadius.circular(width * 0.04),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.3),
                                      spreadRadius: 2,
                                      blurRadius: 5,
                                      offset:  Offset(0, 3),
                                    ),
                                  ],
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(width * 0.04),
                                  child: Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Markus Coralo',
                                            style: TextStyle(
                                              fontSize: width * 0.045,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          SvgPicture.asset(
                                              "assets/icons/arrow.svg")
                                        ],
                                      ),
                                      Text("Product name"),
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
                                              color: Colors.orange,
                                              borderRadius:
                                              BorderRadius.circular(
                                                  width * 0.01),
                                            ),
                                            child: Text(
                                              'Partially Paid',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: width * 0.03,
                                              ),
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
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor: Colors.teal,
                                                shape:
                                                RoundedRectangleBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(
                                                      width * 0.02),
                                                ),
                                              ),
                                              child:  Icon(Icons.chat,
                                                  color: Colors.white),
                                            ),
                                          ),
                                          SizedBox(width: width * 0.02),
                                          Expanded(
                                            child: ElevatedButton(
                                              onPressed: () {},
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor:
                                                Colors.orange,
                                                shape:
                                                RoundedRectangleBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(
                                                      width * 0.02),
                                                ),
                                              ),
                                              child:  Icon(Icons.call,
                                                  color: Colors.white),
                                            ),
                                          ),
                                          SizedBox(width: width * 0.02),
                                          Expanded(
                                            child: ElevatedButton(
                                              onPressed: () {},
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor:
                                                Colors.blue.shade900,
                                                shape:
                                                RoundedRectangleBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(
                                                      width * 0.02),
                                                ),
                                              ),
                                              child:  Icon(Icons.email,
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),

                    // TAB 2
                    Column(
                      children: [
                        Expanded(
                          child: ListView.separated(
                            shrinkWrap: true,
                            itemCount: 7,
                            separatorBuilder: (context, index) =>
                                SizedBox(height: width * 0.09),
                            itemBuilder: (context, index) {
                              return InkWell(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => ListMarkus(),));
                                },
                                child: Container(
                                  height: width * 0.6,
                                  width: width,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                    BorderRadius.circular(width * 0.04),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.3),
                                        spreadRadius: 2,
                                        blurRadius: 5,
                                        offset:  Offset(0, 3),
                                      ),
                                    ],
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.all(width * 0.04),
                                    child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Markus Coralo',
                                              style: TextStyle(
                                                fontSize: width * 0.045,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            SvgPicture.asset(
                                                "assets/icons/arrow.svg")
                                          ],
                                        ),
                                        Text("Product name"),
                                        SizedBox(height: width * 0.02),
                                        Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          children: [
                                            Column(
                                              children: [
                                                 Text("Email"),
                                                 Text(
                                                    "salmantm@gmail.com")
                                              ],
                                            ),
                                            Column(
                                              children: [
                                                 Text("Number"),
                                                 Text("9048136756")
                                              ],
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: width * 0.05),
                                        Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Created on 18-10-2021',
                                              style: TextStyle(
                                                fontSize: width * 0.035,
                                                color: Colors.grey[600],
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.end,
                                          children: [
                                            Container(
                                              height: width * 0.1,
                                              width: width * 0.4,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                  BorderRadius.circular(
                                                      width * 0.03),
                                                  color: Colors.black),
                                              child: const Center(
                                                child: Text(
                                                  "Complete Admission",
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),

                    // TAB 3
                    ListView.builder(
                      padding:  EdgeInsets.all(width*0.02),
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade300,
                                blurRadius: 5,
                                spreadRadius: 1,
                              ),
                            ],
                          ),
                          child: Padding(
                            padding:  EdgeInsets.all(16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                     Text(
                                      "Markus Coralo",
                                      style: TextStyle(
                                          fontSize: 18, fontWeight: FontWeight.bold),
                                    ),
                                    IconButton(
                                      icon: Icon(
                                        expandedList[index]
                                            ? Icons.keyboard_arrow_up
                                            : Icons.keyboard_arrow_down,
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          expandedList[index] = !expandedList[index];
                                        });
                                      },
                                    ),
                                  ],
                                ),
                                 SizedBox(height: 4),
                                 Text("Product name",
                                    style: TextStyle(color: Colors.grey)),

                                if (expandedList[index]) ...[
                                   SizedBox(height: 10),
                                   Row(
                                     mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                     children: [
                                       Column(
                                         children: [
                                           Text("Email"),
                                           Text(" markusc@gmail.com")
                                         ],
                                       ),Column(
                                         children: [
                                           Text("phone"),
                                           Text("9048126756")
                                         ],
                                       ),
                                     ],
                                   ),
                                  Row(
                                     mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                     children: [
                                       Column(
                                         children: [
                                           Text("Batch"),
                                           Text(" 2021–2022")
                                         ],
                                       ),Column(
                                         children: [
                                           Text("Alt. Phone"),
                                           Text("+91 9887654321")
                                         ],
                                       ),
                                     ],
                                   ),
                                   Text("Address"),

                                   Text(
                                      ": House No 336B, Street name, Town, 688866"),
                                   SizedBox(height: 10),
                                ],

                                // Footer (Created on)
                                Container(
                                  padding:
                                   EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade200,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child:  Text(
                                    "Created on 18-10-2021",
                                    style: TextStyle(fontSize: 13, color: Colors.black87),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

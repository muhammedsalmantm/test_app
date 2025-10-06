
import 'package:flutter/material.dart';

import '../test.dart';
import 'create_leads.dart';

class UserDetails extends StatefulWidget {
  const UserDetails({super.key});

  @override
  State<UserDetails> createState() => _UserDetailsState();
}

class _UserDetailsState extends State<UserDetails> {
  @override
  Widget build(BuildContext context) {

    String? selectedStatus ;
    String selectedValue = "Phone Switched Off";

    List<String> items = [

    ];
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title:  Text("Lead Details"),
        centerTitle: true,
        actions:  [
          InkWell(
              onTap: () {
              Navigator.push(context,MaterialPageRoute(builder: (context) => CreateLeads(),));
              },
              child: Icon(Icons.edit)),
          SizedBox(width: 15),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(width * 0.05),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: width * 0.15,
                    backgroundImage:  AssetImage("assets/images/profile.png"),
                  ),
                  SizedBox(height: width * 0.03),
                  Text(
                    "Jestin Varghese",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: width * 0.05,
                    ),
                  ),
                  SizedBox(height: width * 0.05),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.teal,
                          ),
                          child:  Icon(Icons.chat, color: Colors.white),
                        ),
                      ),
                      SizedBox(width: width * 0.02),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                          ),
                          child:  Icon(Icons.call, color: Colors.white),
                        ),
                      ),
                      SizedBox(width: width * 0.02),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                          ),
                          child:  Icon(Icons.email, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () {
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
                              cursorColor: Colors.black,

                              decoration: InputDecoration(
                                labelText: "Date",
                                hintText: "02.02.2022 06:14PM",
                                labelStyle: TextStyle(color: Colors.black),
                                filled: true,
                                fillColor: Colors.black12,
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(width * 0.02),
                                ),
                              ),
                            ),
                            DropdownButtonFormField<String>(
                              value: selectedStatus,
                              items: [
                                DropdownMenuItem(

                                  value: "note type",
                                  child: Text("note type"),
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
                                  borderRadius: BorderRadius.circular(width * 0.02),
                                ),
                                enabledBorder: InputBorder.none,
                                focusedBorder: InputBorder.none,
                              ),
                              icon: Icon(Icons.arrow_drop_down, color: Colors.black),
                              style: TextStyle(color: Colors.black, fontSize: width * 0.04),
                            ),
                            TextFormField(
                              cursorColor: Colors.black,
                              maxLines: 4,
                              decoration: InputDecoration(

                                labelText: " Note ",
                                labelStyle: TextStyle(color: Colors.black),
                                filled: true,
                                fillColor: Colors.black12,
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(width * 0.02),
                                ),
                              ),
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
                                    child: Center(child: Text("Close")),
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
                                    child: Center(child: Text("Save Note",style: TextStyle(
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
              child: Container(
                height: width*0.2,
                width: width*0.9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(width*0.02),
                  color: Colors.green
                ),
                child: ListTile(
                  title:Text("Add Note",style: TextStyle(
                    color: Colors.white
                  ),),
                  subtitle: Text("Create a quick note",style: TextStyle(
                    color: Colors.white
                  ),),
                  trailing: Icon(Icons.arrow_forward,color: Colors.white,),
                ),
              ),
            ),

            Padding(
              padding:  EdgeInsets.all(width*0.04),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 12),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey), // border
                ),
                child: DropdownButton<String>(
                  value: selectedValue,

                  isExpanded: true,
                  underline: SizedBox(),
                  icon: Icon(Icons.arrow_drop_down),
                  items: items.map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (newValue) {
                    setState(() {
                      selectedValue = newValue!;
                    });
                  },
                ),
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(width * 0.03),
              decoration: BoxDecoration(

                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:  [
                            Text("Email"),
                          ],
                        ),
                        Text(" markusc@gmail.com"),
                        SizedBox(height: 10),

                        // Qualification & Place
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:  [
                            Text("Qualification"),

                          ],
                        ),
                        Text("Bcom"),
                        SizedBox(height: 10),

                        // Source & Status
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:  [
                            Text("Source"),
                          ],
                        ),
                        Text("Instagram"),
                        SizedBox(height: 10),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:  [
                            Text("Program"),
                          ],
                        ),
                        Text("Python"),
                        SizedBox(height: 10),

                        // Payment Date
                         Text("Payment Date"),
                        Text(" 22.02.2022")

                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,

                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,

                              children: [
                                Text("Phone"),
                              ],
                            ),
                            Text(" +91 9874562310"),
                            SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,

                              children: [
                                Text("place"),
                              ],
                            ),

                            Text(" palakkad"),
                            SizedBox(height: 10),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,

                              children: [
                                Text("status"),
                              ],
                            ),
                            Text(" Phone Switched off"),
                            SizedBox(height: 10),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,

                              children: [
                                Text("Payment"),
                              ],
                            ),
                            Text(" Partial Payment"),
                          ],
                        ),
                      ],
                    )
                  ],
                ),

              ),


            Padding(
              padding:  EdgeInsets.all(width*0.08),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Note",style: TextStyle(
                        fontSize: width*0.05
                      ),),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        height: width*0.1,
                        width: width*0.1,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(width*0.03),
                          color: Colors.red
                        ),
                        child: Icon(Icons.email_outlined,color: Colors.white,),
                      ),
                      Padding(
                        padding:  EdgeInsets.all(width*0.04),
                        child: Container(
                          height: width*0.3,
                          width: width*0.65,
                          decoration: BoxDecoration(

                            borderRadius: BorderRadius.circular(width*0.03)
                          ),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Note heading"),
                                  Text("18-10-2021")
                                ],
                              ),
                              Text("Lorem ipsum dolot sit amet bir calamag toche amir sans. Lorem ipsum dolot sit amet bir calamag toche amir sans.")
                            ],
                          ),

                        ),
                      )
                    ],
                  ),   Row(
                    children: [
                      Container(
                        height: width*0.1,
                        width: width*0.1,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(width*0.03),
                          color: Colors.green
                        ),
                        child: Icon(Icons.file_open_outlined,color: Colors.white,),
                      ),
                      Padding(
                        padding:  EdgeInsets.all(width*0.04),
                        child: Container(
                          height: width*0.3,
                          width: width*0.65,
                          decoration: BoxDecoration(

                            borderRadius: BorderRadius.circular(width*0.03)
                          ),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Note heading"),
                                  Text("18-10-2021")
                                ],
                              ),
                              Text("Lorem ipsum dolot sit amet bir calamag toche amir sans. Lorem ipsum dolot sit amet bir calamag toche amir sans.")
                            ],
                          ),

                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),


          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:test_app/container/custom_container.dart';
import 'package:test_app/test.dart';

class ListMarkus extends StatefulWidget {
  const ListMarkus({super.key});

  @override
  State<ListMarkus> createState() => _ListMarkusState();
}

class _ListMarkusState extends State<ListMarkus> {
  final TextEditingController dateController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController numberController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController qualificationController = TextEditingController();
  final TextEditingController addressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text("Create Leads",style: TextStyle(
            fontWeight: FontWeight.bold,color: Colors.black
        ),),
        centerTitle: true,
      ),
      body: Padding(
        padding:  EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(

                children: [
                  TextFormField(
                    maxLines: 2,

                    controller: dateController,
                    decoration:  InputDecoration(
                      filled: true,
                      labelText: "Address Line  1",
                      hintText: "House No.427/BF",
                      fillColor: Colors.black12,
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(width*0.03)
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    maxLines: 2,


                    controller: nameController,
                    decoration:  InputDecoration(
                      filled: true,
                      fillColor: Colors.black12,
                      labelText: "address line 2",
                      hintText: " Streen Name",
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(width*0.03)

                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                      maxLines: 2,


                    controller: numberController,
                    keyboardType: TextInputType.phone,
                    decoration:  InputDecoration(
                      filled: true,
                      fillColor: Colors.black12,
                      labelText: "Address line 3",
                      hintText: "line 3",
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(width*0.03)

                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    maxLength: 6,
                    maxLines: 2,


                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration:  InputDecoration(
                      filled: true,
                      fillColor: Colors.black12,
                      labelText: "pin code",
                      hintText: "pin ",
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(width*0.03)

                      ),
                    ),
                  ),
                  SizedBox(height: 40),
                  TextFormField(
                    maxLines: 2,

                    controller: qualificationController,
                    decoration:  InputDecoration(
                      filled: true,
                      fillColor: Colors.black12,
                      labelText: "Alternate Phone Number",
                      hintText: "Alternate Phone Number",
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(width*0.03)

                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    controller: qualificationController,
                    maxLines: 2,
                    decoration:  InputDecoration(
                      filled: true,
                      fillColor: Colors.black12,
                      labelText: "Batch",
                      hintText: "2021-2022",
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(width*0.03)

                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: width*0.1,),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustomContainer(
                    title: "Submit", onTap: () {

                  },)
                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}

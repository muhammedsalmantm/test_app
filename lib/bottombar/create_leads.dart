import 'package:flutter/material.dart';
import 'package:test_app/container/custom_container.dart';
import 'package:test_app/test.dart';

class CreateLeads extends StatefulWidget {
  const CreateLeads({super.key});

  @override
  State<CreateLeads> createState() => _CreateLeadsState();
}

class _CreateLeadsState extends State<CreateLeads> {
  // Controllers to get text input
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
                    controller: dateController,
                    decoration:  InputDecoration(
                      filled: true,
                      labelText: "Date",
                      hintText: "Enter date",
                      fillColor: Colors.black12,
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(width*0.03)
                      ),
                    ),
                  ),
                   SizedBox(height: 20),
                  TextFormField(
                    controller: nameController,
                    decoration:  InputDecoration(
                      filled: true,
                      fillColor: Colors.black12,
                      labelText: "Name",
                      hintText: "Enter name",
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(width*0.03)

                      ),
                    ),
                  ),
                   SizedBox(height: 20),
                  TextFormField(
                    controller: numberController,
                    keyboardType: TextInputType.phone,
                    decoration:  InputDecoration(
                      filled: true,
                      fillColor: Colors.black12,
                      labelText: "Phone Number",
                      hintText: "Enter phone number",
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(width*0.03)

                      ),
                    ),
                  ),
                   SizedBox(height: 20),
                  TextFormField(
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration:  InputDecoration(
                      filled: true,
                      fillColor: Colors.black12,
                      labelText: "Email",
                      hintText: "Enter email",
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(width*0.03)

                      ),
                    ),
                  ),
                   SizedBox(height: 20),
                  TextFormField(
                    controller: qualificationController,
                    decoration:  InputDecoration(
                      filled: true,
                      fillColor: Colors.black12,
                      labelText: "Qualification",
                      hintText: "Enter qualification",
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(width*0.03)

                      ),
                    ),
                  ),
                ],
              ),
                    SizedBox(height: width*0.8,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        CustomContainer(
                            title: "Create", onTap: () {

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

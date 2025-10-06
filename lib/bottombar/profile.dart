import 'package:flutter/material.dart';

import '../test.dart';
import 'changepass.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,

      ),

      body: Column(
        children: [

          Container(
            padding: EdgeInsets.all(40),
            child: Column(
              children: [
                Container(
                    width: width*0.2,
                    height: width*0.2,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.green,
                        width: 3,
                      ),
                    ),
                    child: CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors.grey[300],
                      child: Icon(
                        Icons.person,
                        size: 50,
                        color: Colors.grey[600],
                      ),
                    ),
                  ),


                SizedBox(height: 20),

                Text(
                  "Jane Doe",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: 5),

                Text(
                  "janedoe@gmail.com",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
          ),
          Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: ListTile(
                leading: Icon(Icons.lock, color: Colors.blue),
                title: Text(
                  'Change Password',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                subtitle: Text(
                  'Secure your account',
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 14,
                  ),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 16,
                  color: Colors.grey,
                ),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilePage2(),));

                },
              ),
            ),

          Padding(
            padding:  EdgeInsets.all(width*0.05),
            child: Container(
              width: double.infinity,
              height: width*0.12,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(width*0.05),
                color: Colors.red
              ),
              child: Center(child: Text("Logout",style: TextStyle(
                color: Colors.white,fontSize: width*0.05
              ),)),
            ),
          ),
        ],
      ),
    );
  }
}
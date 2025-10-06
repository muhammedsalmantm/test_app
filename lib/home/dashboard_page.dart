import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_app/home/notification.dart';

import '../test.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
   bool isSwitched=false;
    List<Map<String, dynamic>> stats = [
     {
       "icon": Icons.link,
       "color": Colors.purple,
       "title": "Payment links",
       "value": "14",
     },
     {
       "icon": Icons.payment,
       "color": Colors.red,
       "title": "Partial Payment",
       "value": "4",
     },
     {
       "icon": Icons.star,
       "color": Colors.green,
       "title": "Expected sale",
       "value": "₹1,10,000",
     },
     {
       "icon": Icons.arrow_forward,
       "color": Colors.blue,
       "title": "Actual Sale",
       "value": "₹80,000",
     },
     {
       "icon": Icons.track_changes,
       "color": Colors.orange,
       "title": "Pending target",
       "value": "₹1,10,000",
     },
     {
       "icon": Icons.percent,
       "color": Colors.amber,
       "title": "Performance",
       "value": "90%",
     },
   ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: Padding(
           padding:  EdgeInsets.all(width*0.03),
           child: SingleChildScrollView(
             child: SizedBox(
               height: height*1.8,
               child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                 children: [
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text(" Hi salman!!",style: TextStyle(
                         fontSize: width*0.06,
                         fontWeight: FontWeight.bold,

                       ),),
                       InkWell(
                           onTap: () {
                             Navigator.push(context, MaterialPageRoute(builder: (context) => NotificationPage()));
                           },
                           child: SvgPicture.asset("assets/icons/notification.svg"))
                     ],
                   ),
                   Container(
                     height: width*0.13,
                     width: width*1,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(width*0.04),
                        color: Colors.black12
                     ),
                     child: Padding(
                       padding:  EdgeInsets.all(width*0.02),
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Text("New Leads",style: TextStyle(
                             fontWeight: FontWeight.bold
                           ),),
                           Switch(
                             value: isSwitched,
                             onChanged:(bool value){
                               setState(() {
                                 isSwitched=value;
                               });
                             } ,
                           ),

                         ]
                       ),
                     ),
                   ),
                   Column(
                     children: [
                       Container(
                         height: width*1.5,
                         width: width*1,
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(width*0.04),
                           color: Colors.white
                         ),
                         child: Column(
                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                           children: [
                             Row(
                               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                               children: [
                                 Container(
                                   height: width*0.5,
                                   width: width*0.4,
                                   decoration: BoxDecoration(
                                       borderRadius: BorderRadius.circular(width*0.04),
                                       color: Color(0xFF00C458)
                                   ),
                                   child: Column(
                                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                     children: [
                                       CircleAvatar(
                                         radius: width*0.06,
                                         backgroundColor: Colors.white,
                                         child: Icon(Icons.arrow_right_alt_rounded),
                                       ),
                                       Text("Sales closed today",style: TextStyle(
                                         color: Colors.white
                                       ),),
                                       Text("14",style: TextStyle(
                                         fontSize: width*0.07
                                             ,color: Colors.white
                                       ),)
                                     ],
                                   ),
                                 ),
                                 Container(
                                   height: width*0.5,
                                   width: width*0.4,
                                   decoration: BoxDecoration(
                                       borderRadius: BorderRadius.circular(width*0.04),
                                       color: Color(0xFFFFA928)
                                   ),
                                   child: Column(
                                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                     children: [
                                       CircleAvatar(
                                         radius: width*0.06,
                                         backgroundColor: Colors.white,
                                         child: Icon(Icons.arrow_right_alt_rounded),
                                       ),
                                       Text("Cold leads",style: TextStyle(
                                           color: Colors.white
                                       ),),
                                       Text("2",style: TextStyle(
                                           fontSize: width*0.07
                                           ,color: Colors.white
                                       ),)
                                     ],
                                   ),
                                 ),

                               ],
                             ),
                             GridView.builder(
                               shrinkWrap: true,
                               physics: NeverScrollableScrollPhysics(),
                               gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                                 crossAxisCount: 2, // 2 columns
                                 crossAxisSpacing: 12,
                                 mainAxisSpacing: 12,
                                 childAspectRatio: 2, // rectangle shape
                               ),
                               itemCount: stats.length,
                               itemBuilder: (context, index) {
                                 final item = stats[index];
                                 return Container(
                                   padding:  EdgeInsets.all(width*0.03),
                                   decoration: BoxDecoration(
                                     color: Colors.white,
                                     borderRadius: BorderRadius.circular(width*0.03),
                                   ),
                                   child: Row(
                                     children: [
                                       CircleAvatar(
                                         backgroundColor: item["color"],
                                         child: Icon(item["icon"],color: Colors.white,),
                                       ),
                                        SizedBox(width: width*0.05),
                                       Expanded(
                                         child: Column(
                                           crossAxisAlignment: CrossAxisAlignment.start,
                                           mainAxisAlignment: MainAxisAlignment.center,
                                           children: [
                                             Text(
                                               item["title"],
                                               style:  TextStyle(
                                                 fontSize: 12,
                                                 color: Colors.black54,
                                               ),
                                             ),
                                              SizedBox(height: 4),
                                             Text(
                                               item["value"],
                                               style:  TextStyle(
                                                 fontSize: 16,
                                                 fontWeight: FontWeight.bold,
                                               ),
                                             ),
                                           ],
                                         ),
                                       )
                                     ],
                                   ),
                                 );
                               },
                             )
                           ],
                         ),

                       ),
                     ],
                   ),
                   Column(
                     children: [
                       Container(
                         height: width*0.5,
                         decoration: BoxDecoration(
                           image: DecorationImage(image: AssetImage("assets/images/dashbord.png"),fit: BoxFit.cover)
                         ),
                       ),
                       Container(
                         height: width*0.5,
                         decoration: BoxDecoration(
                             image: DecorationImage(image: AssetImage("assets/images/dashbord2.png"),fit: BoxFit.cover)
                         ),
                       )
                     ],
                   ) ,




                 ],

               ),
             ),
           ),
         ),
    );
  }
}

import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lecture-10',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 
 bool isSwitchTroggle = false;

//  void switchTroggle (bool value) {


//    print("value: $value");

//  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          
          title: Text("Lecture-10"),
        ),

        body: Column(
          children: [          
            Center(
              child: Transform.scale(
                scale: 2.0,
                  child: Switch(
                  activeColor: Colors.green,
                  activeTrackColor: Colors.blue,
                  inactiveThumbColor: Colors.orange,
                  inactiveTrackColor: Colors.purple,
                  value: isSwitchTroggle, 
                  onChanged: (value) {
                      //  if(isSwitchTroggle == false){
                      //   setState(() {
                      //     print("Is true");
                      //     isSwitchTroggle = true;
                      //   });
                      //  } else {
                      //   setState(() {
                      //     print("Is false");
                      //     isSwitchTroggle = false;
                      //   });
                      // }
                  },
                ),
              ),
            ),


            // ignore: deprecated_member_use
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context, 
                  builder: (BuildContext conetxt) {
                    return AlertDialog(
                      title: Text("This is alert dialoge"),
                      titleTextStyle: TextStyle(color: Colors.green),
                      content: Text("DFhafmal;d afhadfna dadavg"),
                      actions: [
                        TextButton(
                          onPressed: (){
                            Navigator.pop(context);
                          }, 
                        child: Text("yes")),
                        TextButton(
                          onPressed: (){
                            Navigator.pop(context);
                          }, 
                        child: Text("no"))
                      ],
                    );
                  }
                );
              }, 
              child: Text("Alert"),
              
            ),

            ElevatedButton(
              onPressed: () {
                final snakBar = SnackBar(
                    content: Text("Do something"),
                    backgroundColor: Colors.black,
                    action: SnackBarAction(
                      label: "Yes", 
                      textColor: Colors.white,
                      onPressed: () {

                      }, 
                    ),
                  );
                 ScaffoldMessenger.of(context).showSnackBar(snakBar);
              },
               child: Text("SnackBar"),
            ),
           
          ],
        )
    );
  }
}












      //  body: _widgetOptions.elementAt(_currentIndex),
      //   bottomNavigationBar: BottomNavigationBar(
      //     items: [
      //       BottomNavigationBarItem(icon: Icon(Icons.settings, color: Colors.black,), title: Text('Home'), backgroundColor: Colors.yellow   ),
      //       BottomNavigationBarItem(icon: Icon(Icons.settings, color: Colors.black,), title: Text('Home'), backgroundColor: Colors.yellow   ),
      //       BottomNavigationBarItem(icon: Icon(Icons.settings, color: Colors.blueAccent,), title: Text('Home'),backgroundColor: Colors.yellow    ),
      //     ],
      //     iconSize: 40,
      //     backgroundColor: Colors.green,
      //     type: BottomNavigationBarType.shifting,
      //     currentIndex: _currentIndex,
      //     onTap:_onItemTapped
      //   ),

//  var _currentIndex = 0;
//   static const List<Widget> _widgetOptions = <Widget>[  
//     Text('Home Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),  
//     Text('Search Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),  
//     Text('Profile Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),  
//   ];  

//   void _onItemTapped (index) {
//     setState(() {
//       _currentIndex = index;
//     });
//   }


 //  bool isSwitch = false;

  //    void isTroggle (bool value) {

  //      if(isSwitch == false) {

  //        setState(() {
  //          isSwitch = true;
  //          print("afj");
  //        });

  //      }else {
  //        setState(() {
  //          isSwitch = false;
  //          print("ggg");
  //        });
  //      }

  //    }
//  Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Transform.scale(
//               scale: 2,  
//                 child: Switch(
//                 value: isSwitch, 
//                 activeColor: Colors.green,
//                 activeTrackColor: Colors.yellow,
//                 inactiveThumbColor: Colors.blue,
//                 inactiveTrackColor: Colors.orange,
//                 onChanged:isTroggle,
//               ),
//             ),
//             FlatButton(
//               onPressed: () {
//                   showDialog(
//                     context: context, 
//                     builder: (BuildContext context) {
//                       return AlertDialog(
//                         title: Text("Hello"),
//                         content: Text("Hello Bangladesh"),
//                         actions: [
//                           RaisedButton(onPressed: () {},
//                           child: Text("yes"),
//                           ),
//                             RaisedButton(onPressed: () {},
//                           child: Text("No"),
//                           )
//                         ],
//                       );
//                     },
//                   );
//               },
//                child: Text("Alert"),
            
//             ),
//             ElevatedButton(
//               onPressed: () {
//                final snackBar = SnackBar(
//                  content: Text("Hello"),
//                  backgroundColor: Colors.black,
//                  action: SnackBarAction(
//                    label: "DNjandkm", onPressed: () {},
//                    ),
//                );
//                ScaffoldMessenger.of(context).showSnackBar(snackBar);
//               },
//               child: Text("Show snakbar"),
//             )
//           ],
//         ),
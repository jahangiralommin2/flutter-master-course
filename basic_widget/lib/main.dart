
import 'package:basic_widget/page_three.dart';
import 'package:basic_widget/page_two.dart';
import 'package:flutter/material.dart';
//import 'package:basic_widget/page_one.dart';
//
import './page_one.dart';
//import './screens/page_four.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        dividerTheme: DividerThemeData( 
          color: Colors.red ,
          thickness: 10,                               //  <--- change the divider's color
        )
      ),
      initialRoute: PageOne.path,
      routes: {
        PageOne.path :(context) => PageOne(),
        PageTwo.path :(context)=> PageTwo(),
        PageThree.path :(context)=> PageThree(),
      },
    );
  }
}

















class HomePage extends StatelessWidget {

  var dropdownValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Popup Menu"),
        // actions: [
        //   PopupMenuButton(
        //     itemBuilder: (BuildContext bc) => [
        //       PopupMenuItem(child: Text("New Chat"), value: "/newchat"),
        //       PopupMenuItem(
        //           child: Text("New Group Chat"), value: "/new-group-chat"),
        //       PopupMenuItem(child: Text("Settings"), value: "/settings"),
        //     ],
        //     onSelected: (route) {
        //       print(route);
        //       Navigator.pushNamed(context, route);
        //     },
        //   ),
        // ],
      ),
      body: Container(
        child: Column(
          children: [
          TextButton(
            onPressed: () {},
            child: Text('Enabled Button'),
          ),

          // ElevatedButton.icon(
          //   label: Text('Woolha.com'),
          //   icon: Icon(Icons.web),
          //   onPressed: () {
          //     print('Pressed');
          //   },
          // ),
          // ElevatedButton(
          //   child: Text('Woolha.com'),
          //   onPressed: () {
          //     print('Pressed');
          //   },
          // ),
          // RawMaterialButton(
          //   constraints: BoxConstraints.tight(Size(36, 36)),
          //   onPressed: null,
          //   child: Icon(Icons.trending_up, size: 18),
          //   shape: new CircleBorder(),
          //   elevation: 0.0,
          //   fillColor: Color.fromARGB(255, 240, 240, 240),
          // ),

          // DropdownButton<String>(
          //   value: dropdownValue,
          //   onChanged: (String newValue) {
          //     // setState(() {
          //     //   dropdownValue = newValue;
          //     // });
          //   },
          //   items: <String>['First', 'Second', 'Third', 'Fourth']
          //       .map<DropdownMenuItem<String>>((String value) {
          //     return DropdownMenuItem<String>(
          //       value: value,
          //       child: Text(value),
          //     );
          //   }).toList(),
          // ),

            // showDialog(
            //   context: context,
            //   builder: (context) =>  AlertDialog(
            //     title:  Text('Message'),
            //     content: Text(
            //             'Your file is saved.'),
            //     actions: <Widget>[
            //        TextButton(
            //         onPressed: () {
            //           Navigator.of(context, rootNavigator: true).pop();
            //         },
            //         child:  Text('OK'),
            //       ),
            //     ],
            //   ),
            // ),
    
          ],
        ),
      ),
    );
  }
}

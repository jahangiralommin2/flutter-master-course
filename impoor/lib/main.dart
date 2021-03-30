
import 'package:flutter/material.dart';
void main () {
  runApp(
    MyApp()
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Demo App",
      home: HomePage()
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.deepOrange,
      backgroundColor: Color(0xff00FF00),
      appBar: AppBar(
        title: Text("I AM POOR", style: TextStyle(color: Color(0xff00FF00)),),
        //centerTitle: true,
      ),
      body: Center(child: Image.asset("assets/i_am_poor.png", repeat: ImageRepeat.repeat,)),
    );
  }
}

// class HomePage extends StatefulWidget {
//   @override
//   _HomePageState createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
      
//     );
//   }
// }
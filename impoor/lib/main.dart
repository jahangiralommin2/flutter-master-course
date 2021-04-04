
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
      debugShowCheckedModeBanner: false,
      title: "Demo App",
      home: HomePage()
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      //backgroundColor: Color(0xff00FF00),
      appBar: AppBar(
        title: Text("I AM POOR", style: TextStyle(color: Colors.white),),
        //centerTitle: true,
      ),
      //body: Center(child: Image.asset("assets/impoor.png")),
      body: Center(
        child: Image.network("https://png.pngtree.com/png-clipart/20210224/ourmid/pngtree-illustration-poor-people-png-image_2914939.jpg"),
      )
    );
  }
}



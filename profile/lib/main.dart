
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
      title: "Profile App",
      home: HomePage()
    );
  }
}


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
        backgroundColor: Colors.teal,
        body: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage("assets/avatar.png"),
                //child: Image.asset("assets/avatar.png"),
              ),
              Text(
                "Mr. Mehedi",
                style: TextStyle(
                  fontFamily: "Pacifico",
                  fontSize: 28,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Flutter Developer".toUpperCase(),
                style: TextStyle(
                  fontFamily: "SourceSansPro",
                  fontSize: 24,
                  color: Colors.white,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Divider(
                thickness: 2,
                color: Colors.teal.shade400,
                indent: 100,
                endIndent: 100,
              ),
              SizedBox(height: 10,),
              Card(
                // shape: RoundedRectangleBorder(
                //   borderRadius: BorderRadius.circular(20)
                // ),
                //elevation: 10,
                // color: Colors.purple,  
                margin: EdgeInsets.symmetric(horizontal: 15),       
                child: Container(
                  height: 56,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.phone,
                      color: Colors.teal,
                      size: 28,
                      ),
                      SizedBox(
                        width: 20,
                        //height: 20,
                      ),
                      Text("+8801790180825",
                      style: TextStyle(
                        fontFamily: "SourceSansPro",
                        fontSize: 24,
                        color: Colors.teal,
                        fontWeight: FontWeight.normal,
                      ),
                     ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Card(
                // shape: RoundedRectangleBorder(
                //   borderRadius: BorderRadius.circular(20)
                // ),
                //elevation: 10,
                // color: Colors.purple,  
                margin: EdgeInsets.symmetric(horizontal: 15),       
                child: Container(
                  height: 56,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.email,
                      color: Colors.teal,
                      size: 28,
                      ),
                      SizedBox(
                        width: 20,
                        //height: 20,
                      ),
                      Text("mehedi@augnitive.com",
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.teal,
                        fontWeight: FontWeight.normal,
                      ),
                     ),
                    ],
                  ),
                ),
              )
         
            ],
          ),
        )
      ),
    );
  }
}


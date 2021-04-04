
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
    return SafeArea(
        child: Scaffold(
        appBar: AppBar(
          title: Text("Drawer Example", style: TextStyle(color: Color(0xff00FF00)),),
        ),
        //drawer: Drawer(),
        endDrawer: Drawer(
          child: Column(
            children: [
              Container(
                child: Stack(
                  children: [
                    Image.asset("assets/background.jpg"),
                    Positioned(
                      left: 50,
                      top: 30,
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage("assets/profile.jpg"),                  
                      ),
                    ),
                    Positioned(
                      left: 130,
                      top: 50,
                      child: Text("Mehedi Hasan", style: TextStyle(color: Colors.white, fontSize: 20),),
                    ),
                    Positioned(
                      left: 130,
                      top: 80,
                      child: Text("Flutter Developer", style: TextStyle(color: Colors.white, fontSize: 20)),
                    ),
                  ],
                ) ,
              ) ,

              ListTile(
                leading: Icon(Icons.person),
                title: Text("Profile"),
                //subtitle: Text("asfnalfma"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              Divider(
                thickness: 2,
                height: 0,
                color: Colors.grey,
              ),
               ListTile(
                tileColor: Colors.green,
                leading: Icon(Icons.notifications),
                title: Text("Notification"),
                trailing: Icon(Icons.arrow_forward_ios),
              ) ,
                Divider(
                thickness: 2,
                height: 0,
                color: Colors.grey,
              ),
               ListTile(
                leading: Icon(Icons.settings),
                title: Text("Setting"),
                trailing: Icon(Icons.arrow_forward_ios),
              ) ,
                Divider(
                thickness: 2,
                color: Colors.grey,
              ),    
            ],
          ),
        ),

      ),
    );
  }
}

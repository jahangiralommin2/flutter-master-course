import 'package:flutter/material.dart';
class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Herro Animation"),),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Hero(
             tag: "flutter",
             child: Container(
                height: 100,
                child: Image.asset('assets/flutter_logo.png'),
               ),
            ),
            SizedBox(height: 40,),
            ElevatedButton(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Page2()),
                );
              }, 
              child: Text("Click here"),
            )
          ],
        ),
      ));
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Second Screen"),),
      body: Container(
        alignment: Alignment.center,
        child: Hero(
            tag: "flutter",
            child: Container(
            height: 200,
            child: Image.asset('assets/flutter_logo.png'),
          ),
        ),
      ),
    );
  }
}
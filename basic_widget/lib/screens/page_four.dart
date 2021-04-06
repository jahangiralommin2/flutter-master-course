
import 'package:flutter/material.dart';
class PageFour extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page Two"),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [       
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.teal),
                shadowColor: MaterialStateProperty.all(Colors.red)
              ),
              onPressed: () {
                
              }, 
              child: Text("Page Two"),
           ),
          //  FlatButton(
          //    color: Colors.teal,
          //    textColor: Colors.red,
          //    onPressed: (){}, 
          //    child: Text("Page One"),
          //   )
          ],
        ),
      ),
    );
  }
}
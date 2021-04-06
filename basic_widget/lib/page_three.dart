import 'package:basic_widget/page_one.dart';
import 'package:flutter/material.dart';


class PageThree extends StatelessWidget {
  static const String path = "pageThree";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page Three"),
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
                //Navigator.pop(context);
                 Navigator.popAndPushNamed(context, PageOne.path);
              }, 
              child: Text("Page Three"),
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
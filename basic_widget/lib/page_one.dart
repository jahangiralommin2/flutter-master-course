import 'package:basic_widget/page_two.dart';
import 'package:flutter/material.dart';

class PageOne extends StatelessWidget {
  static const String path = "pageOne";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page One"),
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
                Route route = MaterialPageRoute(builder: (context)=>PageTwo());
                Navigator.push(context, route);
              }, 
              child: Text("Page One"),
           ),
          ],
        ),
      ),
    );
  }
}




import 'package:basic_widget/page_one.dart';
import 'package:basic_widget/page_three.dart';
import 'package:flutter/material.dart';
class PageTwo extends StatelessWidget {
  static const String path = "pageTwo";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page Two"),
        actions: [
          PopupMenuButton(
            onSelected: (value) {
              if ( value == "Page Three") {
                Route route = MaterialPageRoute(builder: (context)=>PageThree());
                Navigator.push(context, route);
              }
            },
            offset: Offset(30.0, 40.0),
             shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(15.0))
            ),
            itemBuilder: (context) {
            final list = <PopupMenuEntry<int>>[];
            list.add(
              PopupMenuItem(
                child: Row(
                  children: [
                    Icon(Icons.add, color: Colors.white),
                    Text(
                      "InduceSmile.com",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            );
            list.add(
              const PopupMenuDivider(
                height: 40,
              ),
            );
            return list;
          },
            // itemBuilder: (BuildContext  contex) {
            // return [
            //   PopupMenuItem(
            //     child: Text("Page One"), value: "Page One",
            //   ),
          
            //   PopupMenuItem(child: Text("Page Tow"), value: "Page Two",),
            //   PopupMenuItem(child: Text("Page Three"), value : "Page Three")
            // ];
 // } 
          )
        ],
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [       
            TextButton(
              onPressed: () {
                Route route = MaterialPageRoute(builder: (context)=>PageThree());
                Navigator.push(context, route);
              }, child: Text("Page Two"),
            )
          ],
        ),
      ),
    );
  }
}
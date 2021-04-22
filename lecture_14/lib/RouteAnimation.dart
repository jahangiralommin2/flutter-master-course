

import 'package:flutter/material.dart';
class Page1 extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Page one"),),
      body: Center(
        child: ElevatedButton(
          child: Text('Go!'),
          onPressed: () {
           Navigator.of(context).push(_createRoute(Page2()));
          },
        ),
      ),
    );
  }
}


Route _createRoute(Widget widget) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation){
      return widget;
    },
    transitionsBuilder: (context, animation, secondaryAnimation, child){
      var begin = Offset(0.0, 1.0);
      var end = Offset.zero;
      var tween = Tween(end: end, begin: begin);
      var offsetAnimation = animation.drive(tween);
      return SlideTransition(
        position: offsetAnimation,
        child: child,
      );
    }
  );
}



class Page2 extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Page two"),),
      body: Center(
        child: Text('Page 2'),
      ),
    );
  }
}

class Page3 extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Page two"),),
      body: Center(
        child: Text('Page 3'),
      ),
    );
  }
}
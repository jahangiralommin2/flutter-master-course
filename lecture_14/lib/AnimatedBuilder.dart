
import 'package:flutter/material.dart';
import 'dart:math' as math;
class AnimationBuilderClass extends StatefulWidget {


  @override
  _AnimationBuilderClassState createState() => _AnimationBuilderClassState();
}


class _AnimationBuilderClassState extends State<AnimationBuilderClass>  with TickerProviderStateMixin{

  late final AnimationController animationController =  AnimationController(
    vsync: this,
    duration: Duration(seconds: 5),
  )..repeat();

 


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Animated Builder Example"),),
        body: AnimatedBuilder(
          animation: animationController, 
          builder: (BuildContext context, Widget? child) {
            return Transform.rotate(
              angle: animationController.value * 2.0 * math.pi,
              child: Container(height: 200,width: 200, color: Colors.blue,),
            );
          },
      )
    );
  }
}

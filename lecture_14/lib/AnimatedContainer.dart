
import 'package:flutter/material.dart';

class AnimatedAlignBuilder extends StatefulWidget {

  @override
  _AnimatedAlignBuilderState createState() => _AnimatedAlignBuilderState();
}


class _AnimatedAlignBuilderState extends State<AnimatedAlignBuilder> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("AnimatedBuilder  Example"),),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              color: Colors.red,
              child: AnimatedContainer(
                width: selected ? 200 : 100,
                height: selected ? 200 : 100,
                color: selected ? Colors.orange : Colors.purple,
                duration: Duration(seconds: 2),
                curve: Curves.easeInCubic,
                child: Text("AnimatedContainer", style: TextStyle(color: selected? Colors.white : Colors.black),)
              ),
            ),



            ElevatedButton(
              onPressed: (){
                setState(() {
                  selected = !selected;
                });
              }, 
              child: Text("Click here"),
            )
          ],
        ),
      ),
    );
  }
}



      //  child: AnimatedContainer(
      //     width: selected ? 200.0 : 100.0,
      //     height: selected ? 100.0 : 200.0,
      //     color: selected ? Colors.red : Colors.blue,
      //     alignment:
      //         selected ? Alignment.center : AlignmentDirectional.topCenter,
      //     duration: const Duration(seconds: 2),
      //     curve: Curves.fastOutSlowIn,
      //     child: const FlutterLogo(size: 75),
      //   ),
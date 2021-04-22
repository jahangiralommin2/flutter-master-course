
import 'package:flutter/material.dart';

class AnimatedAlignPage extends StatefulWidget {

  @override
  _AnimatedAlignPageState createState() => _AnimatedAlignPageState();
}


class _AnimatedAlignPageState extends State<AnimatedAlignPage> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("AnimatedAlignPage Example"),),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 250.0,
              height: 250.0,
              color: Colors.red,
              child: AnimatedAlign(
                alignment:selected ? Alignment.topLeft : Alignment.bottomCenter,
                duration: Duration(seconds: 4),
                child: InkWell(
                  onTap: (){
                  setState(() {
                    selected = !selected;
                  });
                  },
                  child: FlutterLogo(size: 50,),
                ),
              )
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

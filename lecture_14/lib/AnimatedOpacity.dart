import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  double opacitLevel = 1.0;

  void changeOpactiy() {
    setState(()=> opacitLevel = opacitLevel == 0 ? 1.0 : 0.5);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Animated Opacity"),),
      body: Container(
        width: double.infinity,
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AnimatedOpacity(
           opacity: opacitLevel,
           curve: Curves.easeIn,
           duration: Duration(seconds: 5),
           child: Container(
              height: 200,
              child: Image.asset("assets/flutter_logo.png"),
            ),
          ),
          SizedBox(height: 40,),
          ElevatedButton(
            child: Text('Fade Logo'),
            onPressed:changeOpactiy,
          ),
        ],
    ),
      ),
    );
  }
}





    //  AnimatedOpacity(
    //         opacity: opacityLevel,
    //         curve: Curves.easeInCubic,
    //         duration: Duration(seconds: 3),
    //         child: Container(
    //           height: 200,
    //           child: Image.asset("assets/flutter_logo.png"),
    //         )
    //       ),
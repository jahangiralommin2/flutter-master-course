import 'package:flutter/material.dart';
import 'package:lecture_13/home.dart';
import 'package:lecture_13/theme_controller.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ThemeModel>(
      create: (_) => ThemeModel(),
      child: Consumer<ThemeModel>(
        builder: (_, model, __) {
          return MaterialApp(
            debugShowCheckedModeBanner: false, 
            theme: ThemeData(
              brightness: Brightness.light,
              primaryColor: Colors.purple,
              accentColor: Colors.pink,
              fontFamily: "Georgia",
              textTheme: TextTheme(
                headline1: TextStyle(fontSize: 75, color: Colors.white),
                headline2: TextStyle(fontSize: 36, color: Colors.white),
                headline3: TextStyle(fontSize: 14, color: Colors.white)
              )
            ),
            darkTheme: ThemeData(
              brightness: Brightness.dark,
              primaryColor: Colors.orange,
              accentColor: Colors.red,
              fontFamily: "Georgia",
              

              textTheme: TextTheme(
                headline1: TextStyle(fontSize: 75, color: Colors.white),
                headline2: TextStyle(fontSize: 36, color: Colors.white),
                headline3: TextStyle(fontSize: 14, color: Colors.white)
              )

            ),
            // theme: ThemeData.light(),
            // darkTheme: ThemeData.dark(),
            themeMode: model.mode,
            home: HomePage(),
          );
        },
      ),
    );
  }
}
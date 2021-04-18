import 'package:flutter/material.dart';
import 'package:lecture_13/theme_controller.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  bool checkboxValue = false;

  Map<String, bool> item = {
    'Egges' : false,
    'Chocolates' : false,
    'Flour' : false,
  };

  List<String> list = ["Egges", "Chocolates", "Flour"];



    int groupValue = 0;

    bool checkBoxVal = false;
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lecture-13"),
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.only(bottom: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [






            
            // ...item.keys.map((key) {
            //   return Row(
            //     children: [
            //       Checkbox(
            //       value: item[key], 
            //       onChanged: (bool value) {
            //         setState(() {
            //           item[key] = value;
            //         });
            //        },
            //       ),
            //      Text(key),
            //     ],
            //   );
            // }),


            // Checkbox(
            //   value: checkBoxVal, 
            //   onChanged: (bool value) {
            //     setState(() {
            //       checkBoxVal = value;
            //     });
            //   },
            // ),

            // Radio(
            //   activeColor: Colors.green,
            //   value: 1, 
            //   groupValue: groupValue, 
            //   onChanged: (value) {
            //     setState(() {
            //       groupValue = value;
            //       print("groupValue: $groupValue");
            //     });
            //   }
            // ),
            // Radio(
            //   value: 2, 
            //   groupValue: groupValue, 
            //   onChanged: (value) {
            //     setState(() {
            //       groupValue = value;
            //       print("groupValue: $groupValue");
            //     });
            //   }
            // ),
            // Radio(
            //   value: 3, 
            //   groupValue: groupValue, 
            //   onChanged: (value) {
            //     setState(() {
            //       groupValue = value;
            //     });
            //   }
            // ),

            Text(
              "Hello",
              style: Theme.of(context).textTheme.headline3,
            ),




            Spacer(),
            Consumer<ThemeModel>(
              builder: (context, model, child) {
                return ElevatedButton(
                  onPressed: () => model.toggleMode(), 
                  child: Text("Chnage Theme"),
                );
              },
            ),
          ],
        ),
      ),

      // floatingActionButton: FloatingActionButton(
      //     onPressed: () {
      //      //TODO Discuss bottom sheet
           
      //      showBottomSheet(
      //        context: context, 
      //        builder: (_) {
      //          return Container(
      //            height: 100,
      //            child: Column(
      //               children: [
      //                 ListTile(
      //                   leading: Icon(Icons.favorite),
      //                   title: Text("favorite"),
      //                 ),
      //               ],
      //            ),
      //          );
      //        },
      //       );
      //     print("Hello");
    
      //     },
      //     child: Icon(Icons.add),
      //   ),
      
      floatingActionButton: FloatingActionButton(
        onPressed: () {
        },
        child: Icon(Icons.add),
      ),
    );
  }
}


          // ...list.keys.map((String key) {
          //     return  Checkbox(
          //     value: list[key], 
          //     onChanged: (value) {
          //       setState(() {
          //         list[key] = value;
          //         print(value);
          //       });
          //     },
          //    );
          //   }),
           
            // Container(
            //   child: Text("Hie",
            //   style: Theme.of(context).textTheme.headline1
            //   ),
            // ),
            

      // floatingActionButton: Theme(
      //   // Create a unique theme with "ThemeData"
      //   data: ThemeData(
      //     accentColor: Colors.pink,
      //   ),
      //   child: FloatingActionButton(
      //     onPressed: () {},
      //     child: Icon(Icons.add, color: Theme.of(context).accentColor,),
      //   ),
      // ),
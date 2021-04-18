import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lecture-12',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


List<String> image = [
  "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png" ,
  "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png"  ,
  "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png"  ,
  "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png"   
];

TextEditingController textEditingController = TextEditingController();

List<Color> color = [Colors.orange, Colors.blue,Colors.yellow, Colors.purple, Colors.yellow, Colors.purple, Colors.yellow, Colors.purple];
var dropDownItemValue = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Lecture-12"),),
      body: GridView.builder(
        itemCount: 4,
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 100.0,
          //childAspectRatio: 1.5,
          crossAxisSpacing: 5.0,
          mainAxisSpacing: 5.0,
        ),
        itemBuilder: (context, index) {
          return Image.network(image[index]);
        },
      )
    );
  }
}



      //  DropdownButton(
      //       onChanged: (value) {
      //         setState(() {
      //           dropDownItemValue = value;
      //         });
      //         print(dropDownItemValue);
      //       },
      //       //elevation: 10,
      //       underline: Container(),
      //       icon: Icon(Icons.add),
      //       iconSize: 40,
      //       value: dropDownItemValue,
      //       items: [
      //         DropdownMenuItem(child: Text("Items 1"), value: 0,),
      //         DropdownMenuItem(child: Text("Items 2"), value: 1,),
      //         DropdownMenuItem(child: Text("Items 3"), value: 2,),
      //         DropdownMenuItem(child: Text("Items 4"), value: 3,),
      //       ],
      //   )


// ListView.separated(
//         separatorBuilder: (context, index) {
//           return Divider(
//           thickness: 10,
//             color: Colors.black12,
//           );
        
//         },
//         physics: BouncingScrollPhysics(),
//         itemCount: 8,
//         itemBuilder: (context, index) {
//           return  Container(
//             height: 150,
//             color: color[index],
//           );
//         },
//       )



// SingleChildScrollView(
//           scrollDirection: Axis.horizontal,
//           child: Row(
//             children: [
//               Container(
//                 width: 150,
//                 color: Colors.orange,
//               ), 
//               Container(
//                   width: 150,
//                 color: Colors.blue,
//               ), 
//                 Container(
//                  width: 150,
//                 color: Colors.purple,
//               ), 
//                 Container(
//                  width: 150,
//                 color: Colors.yellow,
//               ), 
//                 Container(
//             width: 150,
//                 color: Colors.green,
//               ), 
//                  Container(
//                 width: 150,
//                 color: Colors.green,
//               ), 
//                  Container(
//                width: 150,
//                 color: Colors.green,
//               ), 
    
//             ],
//           ),
       // ),

//TextField(
            //  controller: textEditingController,
            //  cursorColor: Colors.orange,
            //  cursorHeight: 20,
            //  decoration: InputDecoration(
            //   contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal:10),
            //   fillColor: Colors.black12,
            //   filled: true,
            //   hintText: "Ender your name",
            //   hintStyle: TextStyle(color: Colors.orange),
            //   labelText: 'First Name',
            //   labelStyle: TextStyle(color: Colors.blue),
            //   //border: InputBorder.none,
            //   border: OutlineInputBorder(
            //     borderRadius: BorderRadius.circular(10),
            //     borderSide: BorderSide(
            //       width: 2,
            //       color: Colors.orange
            //     )
            //   ),
            //   focusColor: Colors.orange,
            //   enabledBorder: OutlineInputBorder(
            //     borderRadius: BorderRadius.circular(10),
            //      borderSide: BorderSide(color: Colors.red)
            //   ),
            //   focusedBorder: OutlineInputBorder(
            //     borderRadius: BorderRadius.circular(10),
            //     borderSide: BorderSide(color: Colors.red)
            //   ),
            //   prefixIcon: Icon(Icons.location_city),
            //   suffixIcon: Icon(Icons.arrow_upward)
            //  ),
            
            // )






















//  List<String> images = [  
//     "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",  
//     "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",  
//     "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",  
//     "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png"  
//   ];  



//  TextField(
//               controller: textEditingController,
//               //maxLines: 4,
//               obscureText: true,
//               onChanged: (value) {
//                 print(value);
//               },
//               cursorColor: Colors.orange,
//               cursorHeight: 30,
              
//               decoration: InputDecoration(
//                 hintText: "Password",
//                 labelText: "Password field",
//                 contentPadding: EdgeInsets.only(left: 20,right: 30),
//                 hintStyle: TextStyle(),
//                 labelStyle: TextStyle(),

//                 disabledBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(20),
//                   borderSide: BorderSide(
//                     color: Colors.orange,
//                     width: 3
//                   )

//                 ),
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(20),
//                   borderSide: BorderSide(
//                     color: Colors.orange,
//                     width: 3
//                   )

//                 ),
//                 //border: InputBorder.none,
//                 suffix: Icon(Icons.visibility),
//                 prefixIcon: Icon(Icons.home),
//                 fillColor: Colors.teal,
//                 filled: true,
//                 enabledBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(20),
//                   borderSide: BorderSide(
//                     color: Colors.orange,
//                     width: 3
//                   )

//                 ),
//               )

//             )




// GridView.extent(
//           maxCrossAxisExtent: 400,
//           crossAxisSpacing: 10,
//           mainAxisSpacing: 10,
//           children: <Widget>[  
//               Container(  
//                 padding: const EdgeInsets.all(8),  
//                 child: const Text('First', style: TextStyle(fontSize: 20)),  
//                 color: Colors.yellow,  
//               ), 
//                 Container(  
//                 padding: const EdgeInsets.all(8),  
//                 child: const Text('First', style: TextStyle(fontSize: 20)),  
//                 color: Colors.yellow,  
//               ), 
//                 Container(  
//                 padding: const EdgeInsets.all(8),  
//                 child: const Text('First', style: TextStyle(fontSize: 20)),  
//                 color: Colors.yellow,  
//               ), 
//                 Container(  
//                 padding: const EdgeInsets.all(8),  
//                 child: const Text('First', style: TextStyle(fontSize: 20)),  
//                 color: Colors.yellow,  
//               ), 
//             ]
//       )

//  GridView.builder(         
//           itemCount: images.length,
//           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisCount: 2,
//             mainAxisSpacing: 10,
//             crossAxisSpacing: 10 
//           ), 
//           itemBuilder: (context, index) {
//             return Image.network(images[index]);
//           },
//         )


// GridView.count(
//           crossAxisCount: 2,
//           mainAxisSpacing: 10,
//           crossAxisSpacing: 10,
//           children: [
//             Container(
//               height: 100,
//               width: 100,
//               color: Colors.teal,
//               child: Text("Tab1"),
//             ),
//                Container(
//               height: 100,
//               width: 100,
//               color: Colors.teal,
//               child: Text("Tab1"),
//             ),
//               Container(
//               height: 100,
//               width: 100,
//               color: Colors.teal,
//               child: Text("Tab1"),
//             ),
//                Container(
//               height: 100,
//               width: 100,
//               color: Colors.teal,
//               child: Text("Tab1"),
//             ),
//                Container(
//               height: 100,
//               width: 100,
//               color: Colors.teal,
//               child: Text("Tab1"),
//             )
//           ],
//         ),

// ListView.separated(
//         separatorBuilder: (context, index) {
//           return Divider(
//             height: 2,
//             color: Colors.orange,
//           );
//         },
//         itemCount: 20,
//         padding: EdgeInsets.symmetric(horizontal: 20),
//         itemBuilder: (context, index) {
//           return ListTile(title: Text("Items $index"),);
//         },
//       )

  //  Column(
  //         children: [
  //           Container(
  //             height: 150,
  //             color: Colors.teal,
  //           ),
  //            ç
  //           Container(
  //             height: 150,
  //             color: Colors.black,
  //           ),
  //           Container(
  //             height: 150,
  //             color: Colors.purple,
  //           ),
  //          Container(
  //             height: 150,
  //             color: Colors.blue,
  //           ),
  //           Container(
  //             height: 150,
  //             color: Colors.orangeAccent,
  //           ),
  //         ],
  //       ),




          // Container(
          //   child: DropdownButton(
          //     value: dropDownValue,
          //     onChanged: (int newValue) {
          //       setState(() {
          //          dropDownValue = newValue;
          //       });
          //     },
          //     underline: Container(
          //       width: 5,
          //       color: Colors.black,
          //     ),
          //     icon: Icon(Icons.ac_unit),
          //     iconSize: 14,
          //     hint: Text("Items"),
          //     items: [
          //       DropdownMenuItem(
          //         value: 0,
          //         child: Text("Item one"),
          //       ),
          //       DropdownMenuItem(
          //         value: 1,
          //         child: Text("Item two"),
          //       ),
          //       DropdownMenuItem(
          //         value: 2,
          //         child: Text("Item three"),
          //       )
          //     ],
          //   )
          // ),
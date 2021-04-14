import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lecture-11',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

int _currentIndex = 0;

List<Widget> bodyItems = [

  PageOne(),
  PageTwo(),
  PageThree()
  // Container(child: Center(child: Text("Home Page")), color: Colors.orangeAccent, height: 200, width: 200),
  // Container(child: Text("Favorite Page"), color: Colors.black,),
  // Container(child: Text("Setting Page"), color: Colors.black,)

];
int count = 0;

void _increement() {
  setState(() {
    count++;
  });
}





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lecture-$count"),
      ),
      body: bodyItems[_currentIndex],
      
      floatingActionButton: FloatingActionButton(
        onPressed:_increement,
        child: Icon(Icons.add),
        //notchedShape: CircularNotchedRectangle()
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // floatingActionButton: FloatingActionButton.extended(
      //   onPressed:_increement,
      //   icon: Icon(Icons.add),
      //   label: Text("Add"),
      //   backgroundColor: Colors.orange,
      // ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            backgroundColor: Colors.green,
            label: "Home"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            backgroundColor: Colors.pink,
            label: "Favorite"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            backgroundColor: Colors.orange,
            label: "Setting"
          )
        ],
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        backgroundColor: Colors.teal,
        elevation: 5,
      ),
    );
  }
}

class PageOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return Center(
    //   child: GestureDetector(
    //     onTap: () {
    //       print("Tapped GestureDetector");
    //     },
    //     child: Container(
    //       color: Colors.green,
    //       height: 200,
    //       width: 200,
    //       child: Text("Page One"),
    //     ),
    //   ),
    // );
    return Center(
      child: Material(
        color: Colors.blue,
        child: InkWell(
          splashColor: Colors.green,
          hoverColor: Colors.orangeAccent,
          onTap: () {
            print("Tapped GestureDetector");
          },
          child: Container(

            height: 200,
            width: 200,
            child: Text("Page One"),
          ),
        ),
      ),
    );
  }
}
class PageTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Page Two"),
    );
  }
}

class PageThree extends StatefulWidget {

  @override
  _PageThreeState createState() => _PageThreeState();
}

class _PageThreeState extends State<PageThree> {

 final items = List<dynamic>.generate(20, (i) => "Item ${i + 1}");


  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: items.length,
        itemBuilder: (conetxt, index) {
          final item =  items[index];
          print(item);
          return Dismissible(
              background: Container(
                color: Colors.orange
              ),
              secondaryBackground: Container(
                color: Colors.blue
              ),
              key: Key(item),
              onDismissed: (direction) {
                  setState(() {
                    items.removeAt(index);
                  });
               },
              child: ListTile(
              title: Text("Item"),
            ),
          );
        },
      ),
    );
  }
}


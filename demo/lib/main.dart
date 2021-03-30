

import 'package:flutter/material.dart';

void main () {
  runApp(
    MaterialApp(
      title: "Demo App",
      home: Scaffold(
        appBar: AppBar(
          title: Text("First App"),
          centerTitle: true,
          actions: [
            Icon(Icons.notifications),
            Icon(Icons.share),
            Icon(Icons.add),
          ],
        ),
        body: Text("fnjn"),
      ),
    )
  );
}

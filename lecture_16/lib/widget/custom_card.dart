
import 'package:flutter/material.dart';
class CustomCard extends StatelessWidget {

final Function updateFunction;
final String title;
final Function deleteFunction;
final Widget child;

  const CustomCard({
    this.deleteFunction, this.title, this.updateFunction, this.child
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Card(
        elevation: 5,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              IconButton(
                icon: Icon(Icons.edit, color: Colors.red,), 
                onPressed: updateFunction
              ),
              Container(
                child: child,
              ),
              Expanded(
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [                 
                      Text("$title"),
                    ],
                  ),
                ),
              ),
              IconButton(
                icon: Icon(Icons.delete, color: Colors.red,), 
                onPressed: deleteFunction
              )
            ],
          ),
        ),
      ),
    );
  }
}
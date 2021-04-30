import 'package:flutter/material.dart';
import 'package:lecture_16/api_service.dart';
import 'package:lecture_16/widget/custom_card.dart';
class UpdateScreen extends StatefulWidget {
  UpdateScreen({this.id,this.title});
  final String title;
  final String id;
  @override
  _UpdateScreenState createState() => _UpdateScreenState();
}

class _UpdateScreenState extends State<UpdateScreen> {
  final ApiService apiService = ApiService();
  TextEditingController _titleEditingController;
  @override
  void initState() {
    _titleEditingController = TextEditingController(text: widget.title);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Update Task Title"),),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            TextField (  
              controller: _titleEditingController,
              decoration: InputDecoration(  
                labelText: 'Task Titile',  
                hintText: 'Enter Task Titile'  
              ),  
               autofocus: true,
            ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: (){
                      apiService.updateAlbum(widget.title, widget.id);
                  }, 
                  child: Text("Update"),
                ),
              ),
          ],
        ),
        
      ),
    );
  }
}
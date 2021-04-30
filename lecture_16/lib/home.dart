
import 'package:flutter/material.dart';
import 'package:lecture_16/api_service.dart';
import 'package:lecture_16/update.dart';
import 'package:lecture_16/widget/custom_card.dart';



class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

 var _titleEditingController = TextEditingController();

 ApiService apiService = ApiService();

  var tasks = [];

  @override
  void initState() {
    getData();
    super.initState();
  }

  getData() async{
    tasks = await apiService.getAlbum();
  }

  

  @override
  Widget build(BuildContext context) {
   
    return  Scaffold(
      appBar: AppBar(title: Text("Rest API CRUD"),),
      body: SingleChildScrollView(
          child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              TextField (  
                controller: _titleEditingController,
                decoration: InputDecoration(  
                  labelText: 'Task Titile',  
                  hintText: 'Enter Task Titile'  
                ),  
              ), 
              SizedBox(height: 20,),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: (){
                    var title = _titleEditingController.text;
                    apiService.sendAlbum(title);
                  }, 
                  child: Text("Save"),
                ),
              ),

              for(var i = 0; i < tasks.length; i++)
                CustomCard(
                deleteFunction: (){
                  apiService.deleteAlbum(tasks[i]['id']);
                },
                title:  tasks[i]["title"],
                updateFunction: (){
                  Route route = MaterialPageRoute(builder: (_){
                    return UpdateScreen(title: tasks[i]["title"], id: tasks[i]['id'].toString(),);
                  });
                  Navigator.push(context, route);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

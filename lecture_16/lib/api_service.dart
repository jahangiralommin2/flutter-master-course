
import 'dart:convert';
import 'package:http/http.dart' as http;
class ApiService {

  final baseURL= "jsonplaceholder.typicode.com";


  Future getAlbum() async{
    var response = await http.get(Uri.https("$baseURL", "albums"));

    if(response.statusCode == 200) {
      return jsonDecode(response.body);
    }else {
      throw Exception("Failed to load data");
    }

  }


  Future sendAlbum(String title) async{
    var response = await http.post(
      Uri.https("$baseURL", "albums"),
      body: jsonEncode(<String, String>{
        "title": title,
      }),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      }
    );
    print("response.statusCode : ${response.statusCode }");
    if(response.statusCode == 201) {
      return jsonDecode(response.body);
    }else {
      throw Exception("Failed to load data");
    }

  }

  Future updateAlbum(String title, id) async{
    var response = await http.put(
      Uri.https("$baseURL", "albums/$id"),
      body: jsonEncode(<String, String>{
        "title": title,
      }),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      }
    );
    print("response.statusCode : ${response.statusCode }");
    if(response.statusCode == 200) {
      return jsonDecode(response.body);
    }else {
      throw Exception("Failed to load data");
    }

  }

  Future deleteAlbum(id) async{
    var response = await http.delete(
      Uri.https("$baseURL", "albumss/$id"),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      }
    );
    print("response.statusCode : ${response.statusCode}");
    if(response.statusCode == 200) {
      return true;
    }else {
      return false;
    }

  }
  
}































// Future getTask() async {
//   final response = await http.get(Uri.https("$baseURL", "albums"));
//     if (response.statusCode == 200) {
//       return jsonDecode(response.body);
//     } else {
//       throw Exception('Failed to load data');
//     }
//   }

//   Future<bool> createtask(title) async {
//     final response = await http.post(
//       Uri.https("$baseURL", "albums"),
//       headers: <String, String>{
//         'Content-Type': 'application/json; charset=UTF-8',
//       },
//       body: jsonEncode(<String, String>{
//         'title': title,
//       }),
//     );
  
//     if (response.statusCode == 201) {
//        print("response");
//       print(response.body);
//       return true;
//     } else {
//       return false;
//     }
//   }

//   Future<bool> updateTask(title, id) async {
//     final response = await http.post(
//       Uri.https("$baseURL", "albums/$id"),
//       headers: <String, String>{
//         'Content-Type': 'application/json; charset=UTF-8',
//       },
//       body: jsonEncode(<String, String>{
//         'title': title,
//       }),
//     );
//         print("response");
//       print(response.body);
//     if (response.statusCode == 200) {
//        print("response");
//       print(response.body);
//       return true;
//     } else {
//       return false;
//     }
//   }



//   Future<bool> deletetask(id) async {
//     final response = await http.delete(
//       Uri.https("$baseURL", "albums/$id"),
//       headers: <String, String>{
//         'Content-Type': 'application/json; charset=UTF-8',
//       },
//     );
  
//     if (response.statusCode == 200) {
//       print("response");
//       print(response.body);
//       return true;
//     } else {
//       return false;
//     }
//   }
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:dio/dio.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

class HomeRepository extends Disposable {
  final FirebaseMessaging _messaging = FirebaseMessaging();

  Future fetchPost(Dio client) async {
    final response =
        await client.get('https://jsonplaceholder.typicode.com/posts/1');
    return response.data;
  }

  registerDevice() async {
    _messaging.getToken().then((token) {
      saveDevice(token);
      print(token);
      print("xablau");
    });
  }

  saveDevice(token) {
    
  }

  //dispose will be called automatically
  @override
  void dispose() {
    
  }

}
  
import 'dart:async';

import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:rxdart/rxdart.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthBloc extends BlocBase {
  String name;
  String email;
  final tokenBehavior = new BehaviorSubject<String>.seeded(null);

  final StreamController tokenController = new StreamController<String>();
  StreamSink<String> get inToken => tokenController.sink;
  Stream<String> get token => tokenController.stream;
  // Stream<String> token = new Stream.value(null);
  // String token;
  bool isLogged;



  Future<String> setUser(user) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    await pref.setString('token', user['access_token']);
    this.email = user['email'];
    this.name = user['name'];
    // this.tokenController.sink.add(user["access_token"]);
    this.tokenBehavior.sink.add(user["access_token"]);
    this.inToken.add(user["access_token"]);
    // this._tokenController.sink.add(user["access_token"]);
    print(this.token);
    // this.token = new Stream.value(user['access_token']);
    return pref.getString('token');
  }

  getUser() {
    
  }

  //dispose will be called automatically by closing its streams
  @override
  void dispose() {
    super.dispose();
    tokenBehavior.close();
    tokenController.close();
  }


}
  
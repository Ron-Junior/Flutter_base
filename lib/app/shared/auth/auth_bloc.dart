import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthBloc extends BlocBase {
  String name;
  String email;
  Stream<String> token = new Stream.value(null);
  // String token;
  bool isLogged;



  Future<String> setUser(user) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    await pref.setString('token', user['access_token']);
    this.email = user['email'];
    this.name = user['name'];
    this.token = new Stream.value(user['access_token']);
    return pref.getString('token');
  }

  getUser() {
    
  }

  //dispose will be called automatically by closing its streams
  @override
  void dispose() {
    super.dispose();
  }


}
  
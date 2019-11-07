import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthBloc extends BlocBase {
  String name;
  String email;
  // String token;
  bool isLogged;

  Stream<String> token = new Stream.value(null);


  Future<String> login() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    await pref.setString('token', "xablau");
    return pref.getString('token');
  }

  //dispose will be called automatically by closing its streams
  @override
  void dispose() {
    super.dispose();
  }


}
  
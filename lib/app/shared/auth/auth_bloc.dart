import 'package:bloc_pattern/bloc_pattern.dart';

class AuthBloc extends BlocBase {
  
  var token;

  bool verifySession() {
    return true;
  }
  //dispose will be called automatically by closing its streams
  @override
  void dispose() {
    super.dispose();
  }


}
  
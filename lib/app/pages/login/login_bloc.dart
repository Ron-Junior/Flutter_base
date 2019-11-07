import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter_base/app/shared/auth/auth_bloc.dart';

class LoginBloc extends BlocBase {

  login(){
    AuthBloc().login().then((isLogged) {
      print("token" + isLogged);
      
    });
  }

  //dispose will be called automatically by closing its streams
  @override
  void dispose() {
    super.dispose();
  }

}
  
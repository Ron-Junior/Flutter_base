import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter_base/app/pages/login/login_module.dart';

class LoginBloc extends BlocBase {
  var logRepository = LoginModule.to.getBloc<LoginBloc>();

  login(){
    logRepository.login().then((res) {
      print(res);
    });
    // AuthBloc().login().then((isLogged) {
    //   print("token" + isLogged);
    // });
  }

  //dispose will be called automatically by closing its streams
  @override
  void dispose() {
    super.dispose();
  }

}
  
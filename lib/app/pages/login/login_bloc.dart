import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter_base/app/pages/login/login_repository.dart';

class LoginBloc extends BlocBase {

  final LoginRepository logRepo;
  // var logRepository = LoginModule.to.getBloc<LoginBloc>();
  LoginBloc(this.logRepo);
  login(){
    this.logRepo.login().then((res) {
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
  
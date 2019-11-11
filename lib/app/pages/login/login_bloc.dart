import 'dart:async';

import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter_base/app/pages/login/login_repository.dart';
import 'package:flutter_base/app/pages/login/validator.dart';
import 'package:rxdart/rxdart.dart';

class LoginBloc extends Object with Validators implements BlocBase {
  final _emailController = BehaviorSubject<String>();
  final _passwordController = BehaviorSubject<int>();

  final LoginRepository logRepo;

  Function(String) get emailChanged => _emailController.sink.add;
  Function(String) get passwordChanged => _emailController.sink.add;


  Stream<String> get email => _emailController.stream.transform(emailValidator);
  Stream<int> get password => _passwordController.stream.transform(passwordValidator);
  Stream<bool> get submitCheck => Observable.combineLatest2(email, password, (e, p) => true);

  LoginBloc(this.logRepo);

  login(){
    print(password);
    this.logRepo.login().then((res) {
      print(res);
    });
  }

  //dispose will be called automatically by closing its streams
  @override
  void dispose() {
    _emailController?.close();
    _passwordController?.close();
  }


  noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
  
import 'dart:async';

import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter_base/app/models/user_model.dart';
import 'package:flutter_base/app/pages/login/login_repository.dart';
import 'package:flutter_base/app/pages/login/validator.dart';
import 'package:rxdart/rxdart.dart';

class LoginBloc extends Object with Validators implements BlocBase {
  final _emailController = BehaviorSubject<String>();
  final _passwordController = BehaviorSubject<String>();

  final LoginRepository logRepo;

  Function(String) get emailChanged => _emailController.sink.add;
  Function(String) get passwordChanged => _passwordController.sink.add;


  Stream<String> get email => _emailController.stream.transform(emailValidator);
  Stream<String> get password => _passwordController.stream.transform(passwordValidator);
  Stream<bool> get submitCheck => Observable.combineLatest2(email, password, (e, p) => true);

  LoginBloc(this.logRepo);

  String get emailValue => _emailController.value;
  String get passwordValue => _passwordController.value;
  
  
  login(context){
    print(password);
    var data = new User();
    
    data.email = emailValue;
    data.encryptedPassword = passwordValue;

    this.logRepo.login(data, context).then((res) {
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
  
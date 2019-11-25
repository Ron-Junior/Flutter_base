import 'dart:async';

import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter_base/app/models/user_model.dart';
import 'package:flutter_base/app/pages/register/register_repository.dart';
import 'package:flutter_base/app/pages/register/validator.dart';
import 'package:rxdart/rxdart.dart';

class RegisterBloc extends Object with Validators implements BlocBase {
  final _nameController = BehaviorSubject<String>();
  final _emailController = BehaviorSubject<String>();
  final _passwordController = BehaviorSubject<String>();

  final RegisterRepository logRepo;

  Function(String) get nameChanged => _nameController.sink.add;
  Function(String) get emailChanged => _emailController.sink.add;
  Function(String) get passwordChanged => _passwordController.sink.add;

  Stream<String> get name => _nameController.stream;
  Stream<String> get email => _emailController.stream.transform(emailValidator);
  Stream<String> get password => _passwordController.stream.transform(passwordValidator);
  Stream<bool> get submitCheck => Observable.combineLatest2(email, password, (e, p) => true);

  RegisterBloc(this.logRepo);
  
  String get nameValue => _nameController.value;
  String get emailValue => _emailController.value;
  String get passwordValue => _passwordController.value;
  
  
  register(context){
    print(password);
    var data = new User();

    data.name = nameValue;
    data.email = emailValue;
    data.encryptedPassword = passwordValue;


    this.logRepo.register(data, context).then((res) {
      print(res);
    });
  }

  //dispose will be called automatically by closing its streams
  @override
  void dispose() {
    _nameController?.close();
    _emailController?.close();
    _passwordController?.close();
  }


  noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
  
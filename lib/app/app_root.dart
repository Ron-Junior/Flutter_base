import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_base/app/pages/home/home_module.dart';
import 'package:flutter_base/app/pages/login/login_module.dart';
import 'shared/auth/auth_bloc.dart';

class RootPage extends StatefulWidget {
  RootPage({this.auth});
  final AuthBloc auth;

  @override
  State<StatefulWidget> createState() => new _RootPageState(); 

}

enum AuthStatus {
  notSignedIn,
  signedIn
}


class _RootPageState extends State<RootPage>{
  var auth = new AuthBloc();
  AuthStatus authStatus = AuthStatus.notSignedIn;  
  @override
  void initState() {
    super.initState();
    AuthBloc().tokenBehavior.stream.listen((token) {
      setState(() {
        authStatus = token == null ? AuthStatus.notSignedIn : AuthStatus.signedIn;
      });
    });
  
  }

  @override 
  Widget build(BuildContext context) {
    switch (authStatus) {
      case AuthStatus.notSignedIn:
        return new LoginModule();
      case AuthStatus.signedIn:
        return new HomeModule();
    }
  }

}
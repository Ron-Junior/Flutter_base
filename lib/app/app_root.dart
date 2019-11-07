import 'package:flutter/material.dart';
import 'package:flutter_base/app/pages/home/home_page.dart';
import 'package:flutter_base/app/pages/login/login_page.dart';
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

  AuthStatus authStatus = AuthStatus.notSignedIn;  

  @override
  void initState() {
    super.initState();
    AuthBloc().token.listen((token) {
      print(token);
      setState(() {
        authStatus = token == null ? AuthStatus.notSignedIn : AuthStatus.signedIn;
      });
    });
  }

  @override 
  Widget build(BuildContext context) {
    switch (authStatus) {
      case AuthStatus.notSignedIn:
        return new LoginPage();
      case AuthStatus.signedIn:
        return new HomePage();
    }
  }

}
import 'package:flutter/material.dart';
import 'package:flutter_base/app/pages/home/home_module.dart';
import 'package:flutter_base/app/pages/login/login_module.dart';
import 'package:shared_preferences/shared_preferences.dart';
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


class _RootPageState extends State<RootPage> {
  AuthStatus authStatus = AuthStatus.notSignedIn;
  var auth = new AuthBloc();
  @override
  void initState() {
    super.initState();
    auth.tokenBehavior.stream.listen((token) async {
      SharedPreferences pref = await SharedPreferences.getInstance();
      setState(() {
        authStatus = pref.getString('token') == null ? AuthStatus.notSignedIn : AuthStatus.signedIn;
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
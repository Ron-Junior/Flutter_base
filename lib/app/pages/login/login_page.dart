import 'package:flutter/material.dart';
import 'package:flutter_base/app/pages/login/login_bloc.dart';
import 'package:flutter_base/app/pages/login/login_module.dart';

class LoginPage extends StatefulWidget {

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var loginBloc = LoginModule.to.getBloc<LoginBloc>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('login'),
      ),
      body: Column(
        children: <Widget>[
          new Center(
            child: Column(
              children: <Widget>[
                RaisedButton(
                  onPressed: () {
                    loginBloc.login();
                  },
                  child: const Text(
                    'Entrar',
                    style: TextStyle(fontSize: 20)
                  ),
                ),
              ]
            )
          )
        ],
      ),
    );
  }
}
  
import 'package:flutter/material.dart';
import 'package:flutter_base/app/pages/login/login_bloc.dart';

class LoginPage extends StatefulWidget {
  
  final String title;
  const LoginPage({Key key, this.title = "Login"}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
          new Center(
            child: Column(
              children: <Widget>[
                RaisedButton(
                  onPressed: () {
                    LoginBloc().login();
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
  
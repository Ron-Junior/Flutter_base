import 'package:flutter/material.dart';

import 'package:flutter_base/app/pages/login/login_bloc.dart';
import 'package:flutter_base/app/pages/login/login_module.dart';

// import 'package:flutter_base/app/pages/login/login_bloc.dart';
// import 'package:flutter_base/app/pages/login/login_module.dart';

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
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          padding:EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                StreamBuilder<String>(
                  stream: loginBloc.email,
                  builder: (context, snapshot) => TextField(
                    onChanged: loginBloc.emailChanged,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Digite seu email',
                      labelText: 'Email',
                      errorText: snapshot.error
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                StreamBuilder<String>(
                  stream: loginBloc.password,
                  builder: (context, snapshot) => TextField(
                    onChanged: loginBloc.passwordChanged,
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Digite sua senha',
                      labelText: 'Senha'
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                RaisedButton(
                  color: Colors.tealAccent,
                  onPressed: () {
                    loginBloc.login();
                  },
                  child: const Text(
                    'Entrar',
                    style: TextStyle(fontSize: 20)
                  ),
                ),
                // StreamBuilder<bool>(
                //   stream: loginBloc.submitCheck,
                //   builder: (context, snapshot) => RaisedButton(
                //     color: Colors.tealAccent,
                //     onPressed: snapshot.hasData? () {
                //       loginBloc.login();
                //     }  : null,
                //     child: const Text(
                //       'Entrar',
                //       style: TextStyle(fontSize: 20)
                //     ),
                //   ),
                // )
                
              ]
            )
        )
      ),
    );
  }
}
  
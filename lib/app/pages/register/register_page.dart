import 'package:flutter/material.dart';

import 'package:flutter_base/app/pages/register/register_bloc.dart';
import 'package:flutter_base/app/pages/register/register_module.dart';

// import 'package:flutter_base/app/pages/login/login_bloc.dart';
// import 'package:flutter_base/app/pages/login/login_module.dart';

class RegisterPage extends StatefulWidget {

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  var registerBloc = RegisterModule.to.getBloc<RegisterBloc>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('register'),
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
                  stream: registerBloc.name,
                  builder: (context, snapshot) => TextField(
                    onChanged: registerBloc.nameChanged,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Digite seu nome',
                      labelText: 'Nome',
                      errorText: snapshot.error
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                StreamBuilder<String>(
                  stream: registerBloc.email,
                  builder: (context, snapshot) => TextField(
                    onChanged: registerBloc.emailChanged,
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
                  stream: registerBloc.password,
                  builder: (context, snapshot) => TextField(
                    onChanged: registerBloc.passwordChanged,
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
                    registerBloc.register(context);
                  },
                  child: const Text(
                    'Register',
                    style: TextStyle(fontSize: 20)
                  ),
                ),
              ]
            )
        )
      ),
    );
  }
}
  
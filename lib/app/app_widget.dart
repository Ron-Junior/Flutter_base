import 'package:flutter/material.dart';
import 'package:flutter_base/app/app_bloc.dart';
import 'package:flutter_base/app/pages/home/home_module.dart';
import 'package:flutter_base/app/pages/login/login_module.dart';
import 'package:flutter_base/app/pages/login/login_page.dart';

class AppWidget extends StatelessWidget {

  AppWidget() {
  }

  @override
  Widget build(BuildContext context) {
    var login = MaterialApp(
      title: 'Flutter Slidy',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginModule(),
    );
    var home = MaterialApp(
      title: 'Flutter Slidy',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeModule(),
    );
    var materialApp;
    if(AppBloc().verifySession()){
      materialApp = login;
    }else{
      materialApp = home;
    }
    return materialApp;
  }
}
  
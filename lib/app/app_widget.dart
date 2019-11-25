import 'package:flutter/material.dart';
// import 'package:flutter_base/app/app_bloc.dart';
import 'package:flutter_base/app/app_root.dart';
// import 'package:flutter_base/app/pages/home/home_module.dart';
// import 'package:flutter_base/app/pages/login/login_module.dart';
// import 'package:flutter_base/app/shared/auth/auth_bloc.dart';
//import 'package:flutter_base/app/pages/home/home_module.dart'

class AppWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Slidy',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: RootPage(),
    );
  }
}
  
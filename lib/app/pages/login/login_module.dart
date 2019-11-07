  import 'package:flutter_base/app/app_module.dart';
import 'package:flutter_base/app/pages/login/login_repository.dart';
  import 'package:bloc_pattern/bloc_pattern.dart';
  import 'package:flutter/material.dart';
import 'package:flutter_base/app/pages/login/login_page.dart';
import 'package:flutter_base/app/shared/custom_dio/base_dio.dart';
  
  class LoginModule extends ModuleWidget {
  @override
  List<Bloc> get blocs => [];

  @override
  List<Dependency> get dependencies => [Dependency((i) => LoginRepository(AppModule.to.getDependency<BaseDio>())),];

  @override
  Widget get view => LoginPage();

  static Inject get to => Inject<LoginModule>.of();

}
  
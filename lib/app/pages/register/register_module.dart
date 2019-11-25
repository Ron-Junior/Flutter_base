import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base/app/app_module.dart';
import 'package:flutter_base/app/pages/register/register_bloc.dart';
import 'package:flutter_base/app/pages/register/register_page.dart';
import 'package:flutter_base/app/pages/register/register_repository.dart';
import 'package:flutter_base/app/shared/custom_dio/base_dio.dart';

  class RegisterModule extends ModuleWidget {
  @override
  List<Bloc> get blocs => [
    Bloc((i) => RegisterBloc(RegisterModule.to.getDependency<RegisterRepository>())),
  ];

  @override
  List<Dependency> get dependencies => [
    Dependency((i) => RegisterRepository(AppModule.to.getDependency<BaseDio>()))
  ];

  @override
  Widget get view => RegisterPage();

  static Inject get to => Inject<RegisterModule>.of();

}

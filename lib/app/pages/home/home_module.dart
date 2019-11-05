import 'package:flutter_base/app/app_module.dart';
import 'package:flutter_base/app/pages/home/home_repository.dart';
import 'package:flutter_base/app/pages/home/home_bloc.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base/app/pages/home/home_page.dart';
import 'package:flutter_base/app/shared/custom_dio/base_dio.dart';
  class HomeModule extends ModuleWidget {
  @override
  List<Bloc> get blocs => [Bloc((i) => HomeBloc()),];

  @override
  List<Dependency> get dependencies => [
    Dependency((i) => HomeRepository(AppModule.to.getDependency<BaseDio>())),
    ];

  @override
  Widget get view => HomePage();

  static Inject get to => Inject<HomeModule>.of();

}
  
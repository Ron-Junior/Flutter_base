  import 'package:flutter_base/app/pages/login/login_bloc.dart';
import 'package:flutter_base/app/app_bloc.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base/app/app_widget.dart';

class AppModule extends ModuleWidget {
  @override
  List<Bloc> get blocs => [Bloc((i) => LoginBloc()),Bloc((i) => AppBloc()),Bloc((i) => AppBloc()),];

  @override
  List<Dependency> get dependencies => [];

  @override
  Widget get view => AppWidget();

  static Inject get to => Inject<AppModule>.of();

}
  
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter_base/app/pages/image_picker/image_picker_bloc.dart';
import 'package:flutter_base/app/pages/image_picker/image_picker_repository.dart';
import 'package:flutter_base/app/pages/login/login_bloc.dart';
import 'package:flutter_base/app/app_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base/app/app_widget.dart';
import 'package:flutter_base/app/pages/home/home_bloc.dart';
import 'package:flutter_base/app/pages/login/login_module.dart';
import 'package:flutter_base/app/shared/auth/auth_bloc.dart';


import 'package:flutter_base/app/shared/custom_dio/base_dio.dart';


class AppModule extends ModuleWidget {
  
  @override
  List<Bloc> get blocs => [
    Bloc((i) => ImagePickerBloc()),
    Bloc((i) => AuthBloc()),
    Bloc((i) => AppBloc()),
    Bloc((i) => HomeBloc()),
    Bloc((i) => LoginModule.to.getBloc<LoginBloc>())
  ];

  @override
  List<Dependency> get dependencies => [
    Dependency((i) => BaseDio()),
    Dependency((i) => LoginModule()),
    Dependency((i) => ImagePickerRepository()),
  ];

  @override
  Widget get view => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}

import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base/app/pages/image_picker/image_picker_bloc.dart';
import 'package:flutter_base/app/pages/image_picker/image_picker_page.dart';
import 'package:flutter_base/app/pages/image_picker/image_picker_repository.dart';


class ImagePickerModule extends ModuleWidget {
  @override
  List<Bloc> get blocs => [Bloc((i) => ImagePickerBloc()),];

  @override
  List<Dependency> get dependencies => [Dependency((i) => ImagePickerRepository()),];

  @override
  Widget get view => ImagePickerPage();

  static Inject get to => Inject<ImagePickerModule>.of();
}

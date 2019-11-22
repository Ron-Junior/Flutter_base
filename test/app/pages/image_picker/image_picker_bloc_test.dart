import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_pattern/bloc_pattern_test.dart';

import 'package:flutter_base/app/pages/image_picker/image_picker_bloc.dart';
import 'package:flutter_base/app/app_module.dart';

void main() {
  initModule(AppModule());
  ImagePickerBloc bloc;

  setUp(() {
    bloc = AppModule.to.bloc<ImagePickerBloc>();
  });

  group('ImagePickerBloc Test', () {
    test("First Test", () {
      expect(bloc, isInstanceOf<ImagePickerBloc>());
    });
  });
}

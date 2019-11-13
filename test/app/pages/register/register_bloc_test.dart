import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_pattern/bloc_pattern_test.dart';

import 'package:flutter_base/app/pages/register/register_bloc.dart';
import 'package:flutter_base/app/app_module.dart';

void main() {
  initModule(AppModule());
  RegisterBloc bloc;

  setUp(() {
    bloc = AppModule.to.bloc<RegisterBloc>();
  });

  group('RegisterBloc Test', () {
    test("First Test", () {
      expect(bloc, isInstanceOf<RegisterBloc>());
    });
  });
}

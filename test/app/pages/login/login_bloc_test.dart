import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_pattern/bloc_pattern_test.dart';

import 'package:flutter_base/app/pages/login/login_bloc.dart';
import 'package:flutter_base/app/app_module.dart';

void main() {

  initModule(AppModule());
  LoginBloc bloc;
  
  setUp(() {
      bloc = AppModule.to.bloc<LoginBloc>();
  });

  group('LoginBloc Test', () {
    test("First Test", () {
      expect(bloc, isInstanceOf<LoginBloc>());
    });
  });

}
  
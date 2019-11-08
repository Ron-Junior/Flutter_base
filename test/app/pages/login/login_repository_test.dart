import 'package:flutter_base/app/shared/custom_dio/base_dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:dio/dio.dart';

import 'package:flutter_base/app/pages/login/login_repository.dart';

class MockClient extends Mock implements Dio {}

void main() {
  LoginRepository repository;
  MockClient client;

  setUp(() {
    repository = LoginRepository(BaseDio());
    client = MockClient();
  });

  group('LoginRepository Test', () {
    test("First Test", () {
      expect(repository, isInstanceOf<LoginRepository>());
    });
  });
}
  
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:dio/dio.dart';
import 'package:flutter_base/app/shared/custom_dio/base_dio.dart';

class LoginRepository extends Disposable {
  var data;
  final BaseDio _dio;

  LoginRepository(this._dio);

  Future<Object> login() async {
    try{
      final res = await _dio.post("/v1/login", data: this.data);
      return res;
    }on DioError catch(err){
      throw err.message;
    }
  }


  //dispose will be called automatically
  @override
  void dispose() {
    
  }

}
  
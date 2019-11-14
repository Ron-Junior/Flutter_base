import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:dio/dio.dart';
import 'package:flutter_base/app/models/user_model.dart';
import 'package:flutter_base/app/shared/custom_dio/base_dio.dart';

class LoginRepository extends Disposable {
  var data;
  final BaseDio _dio;

  LoginRepository(this._dio);

  Future<Object> login(User user) async {
    data = user.toJson();
    try{
      final res = await _dio.post("/v1/users/login", data: this.data);
      if(res.statusCode == 200) {
        
      }
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

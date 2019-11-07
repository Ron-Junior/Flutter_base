import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:dio/dio.dart';
import 'package:flutter_base/app/shared/custom_dio/base_dio.dart';

class LoginRepository extends Disposable {
  var data;
  final BaseDio dio;

  LoginRepository(this.dio);

  Future fetchPost() async {
    final response =
        await dio.get('https://jsonplaceholder.typicode.com/posts/1');
    return response.data;
  }

  Future<Object> login() async {
    try{
      final res = await dio.post("/v1/login", data: this.data);
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
  
import 'package:dio/dio.dart';
import 'package:flutter_base/app/app_module.dart';
import 'package:flutter_base/app/shared/auth/auth_bloc.dart';

class BaseInterceptors extends InterceptorsWrapper {
 var token = AppModule.to.getBloc<AuthBloc>().token;
  @override
  Future onRequest(RequestOptions options) {
    // if(token !=  null){
    //  options.headers = {'Authorization': token};
    // }
    // options.headers = {'Content-Type': 'application/json'};
    print('onrequest - ${options.data}');
    print(AppModule.to.getBloc<AuthBloc>().token);
    return super.onRequest(options);
  }

  @override
  Future onResponse(Response response) {
    
    return super.onResponse(response);
  }

  @override
  Future onError(DioError err) {
    
    return super.onError(err);
  }
}
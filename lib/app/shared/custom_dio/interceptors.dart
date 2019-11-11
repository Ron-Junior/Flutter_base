import 'package:dio/dio.dart';
import 'package:flutter_base/app/app_module.dart';
import 'package:flutter_base/app/shared/auth/auth_bloc.dart';

class BaseInterceptors extends InterceptorsWrapper {

  @override
  Future onRequest(RequestOptions options) {
    //options.headers = {'Authorization': AppModule.to.getBloc<AuthBloc>().token};
    // options.headers = {'Content-Type': 'multipart/form-data'};
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
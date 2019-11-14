import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base/app/app_module.dart';
import 'package:flutter_base/app/shared/auth/auth_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

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
    print(response.statusCode);
    return super.onResponse(response);
  }

  @override
  Future onError(DioError err) {
    Fluttertoast.showToast(
        msg: err.response.data["message"],
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIos: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
    );
    print(err.response.statusCode);
    return super.onError(err);
  }
}
import 'package:dio/native_imp.dart';
import 'package:flutter_base/app/shared/constants.dart';
import 'package:flutter_base/app/shared/custom_dio/interceptors.dart';

class BaseDio extends DioForNative {
  
  BaseDio(){
    options.baseUrl = BASE_URL;
    interceptors.add(BaseInterceptors());
  }
}
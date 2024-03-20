import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

import '../../utils/constants/constants.dart';
import '../repository/storage_repository/storage_repository.dart';
class Network{
  static String baseUrl = "https://nbu.uz/en/exchange-rates/json/";
  final _dio = Dio(
    BaseOptions(
      baseUrl: baseUrl,
      connectTimeout: Duration(seconds: TimeOutConstants.connectTimeout),
      receiveTimeout: Duration(seconds: TimeOutConstants.receiveTimeout),
      sendTimeout: Duration(seconds: TimeOutConstants.sendTimeout),
    ),
  );
  Network (){_init();}
  _init(){
    _dio.interceptors.add(
      InterceptorsWrapper(
        onError: (error, handler) async {
          debugPrint("ОШИБКА ПОПАДАНИЯ:${error.message} and ${error.response}");
          return handler.next(error);
        },
        onRequest: (requestOptions, handler) async {
          debugPrint("ЗАПРОС ОТПРАВЛЕН :${requestOptions.path}");
          requestOptions.headers
              .addAll({"token": StorageRepository.getString("token")});
          return handler.next(requestOptions);
        },
        onResponse: (response, handler) async {
          debugPrint("ОТВЕТ ПРИШЕЛ :${response.requestOptions.path}");
          return handler.next(response);
        },
      ),
    );
  }

}
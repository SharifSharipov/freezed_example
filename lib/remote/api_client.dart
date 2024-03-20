import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';

import '../data/model/currency_model.dart';
part 'api_client.g.dart';

@RestApi()
abstract class ApiClient{
  factory ApiClient(Dio dio,{String baseUrl}) = _ApiClient;

  @GET("https://nbu.uz/en/exchange-rates/json/")
  Future<List<CurrencyModel>> getCurrency();
}
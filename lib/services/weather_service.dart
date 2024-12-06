import 'package:dio/dio.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/private.dart';
import 'package:weather_app/variables.dart';

class WeatherService 
{
  final dio=Dio();
  String cityName;
  WeatherService({required this.cityName});
  Future<WeatherModel> getWeather()async
  {
    Response response=await dio.get("$baseURL/forecast.json?key=$apiKey&q=$cityName&days=1");
    WeatherModel weatherModel=WeatherModel.fromJason(response);
    return weatherModel;
  }
}
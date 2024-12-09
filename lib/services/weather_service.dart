import 'package:dio/dio.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/private.dart';
import 'package:weather_app/variables.dart';

class WeatherService 
{
  final dio=Dio();
  Future<WeatherModel?> getWeather({String ? cityName})async
  {
    try 
    {
      Response response=await dio
        .get("$baseURL/forecast.json?key=$apiKey&q=$cityName&days=1");
      WeatherModel weatherModel=WeatherModel.fromJason(response.data);
        return weatherModel;
    } on DioException catch (e) 
    {
      final String errorMessage = e.response?.data['error']['message'];
      throw Exception(errorMessage);
    }
    
  }
}
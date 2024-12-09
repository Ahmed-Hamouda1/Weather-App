import 'package:flutter/material.dart';
import 'package:weather_app/screens/search_screen.dart';
import 'package:weather_app/widgets/no_weather_body.dart';
import 'package:weather_app/widgets/weatehr_body.dart';

class HomeScreen extends StatelessWidget 
{
  //Widget ?body;
  HomeScreen({super.key,/*required this.body*/});
  @override
  Widget build(BuildContext context) 
  {
    return Scaffold
    (
      appBar: AppBar
      (
        title: Text("Weather App"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center
      (
        child: weatherModel==null?NoWeatherBody():WeatherBody(),
      ),
    );
  }
}

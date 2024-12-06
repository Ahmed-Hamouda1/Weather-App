import 'package:flutter/material.dart';
import 'package:weather_app/widgets/weatehr_body.dart';

class HomeScreen extends StatelessWidget 
{
  HomeScreen({super.key});
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
      body: const Center
      (
        child: WeatherBody(),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:weather_app/screens/home_screen.dart';

class WeatherApp extends StatelessWidget 
{
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) 
  {
    return MaterialApp
    (
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
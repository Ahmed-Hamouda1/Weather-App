import 'package:flutter/material.dart';

class WeatherBody extends StatelessWidget 
{
  const WeatherBody({super.key});

  @override
  Widget build(BuildContext context) 
  {
    return Center
    (
      child: Column
      (
        mainAxisAlignment: MainAxisAlignment.center,
        children: 
        [
          Text("Cairo"),
          Text("Update at : "),
          Row
          (
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: 
            [
              Image.network("https://cdn.weatherapi.com/weather/64x64/night/113.png"),
              Text("18"),
              Column
              (
                children: 
                [
                  Text("max : "),
                  Text("min : "),
                ],
              ),
            ],
          ),
          Text("Light rain")
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';

class WeatherBody extends StatelessWidget 
{
  //WeatherModel weatherModel;
  WeatherBody({super.key,/*required this.weatherModel*/});

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
          Text("weatherModel!.cityName"),
          // Text("Update at : ${weatherModel!.date}"),
          // Row
          // (
          //   mainAxisAlignment: MainAxisAlignment.spaceAround,
          //   children: 
          //   [
          //     Image.network(weatherModel!.Image),
          //     Text("${weatherModel!.avgTem}"),
          //     Column
          //     (
          //       children: 
          //       [
          //         Text("${weatherModel!.maxTem}"),
          //         Text("${weatherModel!.minTem}"),
          //       ],
          //     ),
          //   ],
          // ),
          // Text("${weatherModel!.stutesText}")
        ],
      ),
    );
  }
}
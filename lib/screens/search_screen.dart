import 'package:flutter/material.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/screens/home_screen.dart';
import 'package:weather_app/services/weather_service.dart';
import 'package:weather_app/widgets/weatehr_body.dart';

class SearchScreen extends StatelessWidget 
{
  //String ?value;
  SearchScreen({super.key});

  @override
  Widget build(BuildContext context) 
  {
    return Scaffold
    (
      appBar: AppBar
      (
        title: const Text("Search City"),
        backgroundColor: Colors.blue,
      ),
      body: Center
      (
        child: Padding
        (
          padding: const EdgeInsets.all(8.0),
          child: TextField
          (
            decoration: InputDecoration
            (
              //filled: true,
              //fillColor: Colors.amber,
              border: OutlineInputBorder
              (
                borderRadius: BorderRadius.circular(0),
              ),
              //focusColor: Colors.red
              focusedBorder: OutlineInputBorder
              (
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(color: Colors.blue)
              ),
              enabled: true,
              contentPadding: EdgeInsets.all(30),
              hintText: "Enter the city name",
              hintStyle: TextStyle(color: Colors.grey)
            ),
            //keyboardType: TextInputType.numberWithOptions(),
            maxLines: 1,
            maxLength: 20,
            onSubmitted: (value) async
            {
              WeatherModel? weatherModel=await WeatherService().getWeather(cityName: value);
              print(weatherModel!.avgTem);
              Navigator.push
              (
                context, 
                MaterialPageRoute
                (
                  builder: (context)
                  {
                    return HomeScreen(body: WeatherBody(weatherModel: weatherModel!),);
                  }
                )
              );

            },
          ),
        ),
      ),
    );
  }
}
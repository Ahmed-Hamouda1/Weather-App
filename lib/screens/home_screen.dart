import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget 
{
  Widget ?body;
  HomeScreen({super.key,required this.body});
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
        child: body,
      ),
    );
  }
}

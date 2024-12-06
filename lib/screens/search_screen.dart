import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget 
{
  String ?value;
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
              icon: Icon(Icons.add_ic_call_outlined),
              prefixIcon: Icon(Icons.access_alarm_outlined),
              suffixIcon: Icon(Icons.accessibility_new),
              label: Text(""),
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
                borderSide: BorderSide(color: Colors.red)
              ),
              enabled: true,
              helperText: "ahmed",contentPadding: EdgeInsets.all(30)
            ),
            //keyboardType: TextInputType.numberWithOptions(),
            maxLines: 1,
            maxLength: 20,
            onSubmitted: (value)
            {
              print(value);
            },
          ),
        ),
      ),
    );
    
  }
}
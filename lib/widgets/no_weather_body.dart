
import 'package:flutter/material.dart';
import 'package:weather_app/screens/search_screen.dart';

class NoWeatherBody extends StatelessWidget 
{
  const NoWeatherBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) 
  {
    return Column
    (
      mainAxisAlignment: MainAxisAlignment.center,
      children: 
      [
        const Text
        (
          "No Data 😯 ",
          style: TextStyle
          (
            fontSize: 30
          ),
        ),
        const Text
        (
          " start Search now 👇",
          style: TextStyle
          (
            fontSize: 30
          ),
        ),
        const SizedBox(height: 50,),
        ElevatedButton
        (
          onPressed: ()
          {
            Navigator.push
            (
              context, 
              MaterialPageRoute
              (
                builder: (context)
                {
                  return SearchScreen();
                }
              )
            );
          },
          child:Icon
          (
            Icons.search,
            color: Colors.black,size: 80,
          ),
          style: ElevatedButton.styleFrom
          (
            backgroundColor: const Color.fromARGB(255, 157, 197, 231),
          ),
        )
      ],
    );
  }
}
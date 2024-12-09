class WeatherModel
{
  String cityName;
  String date;
  String Image;
  double avgTem;
  double maxTem;
  double minTem;
  String stutesText;
  WeatherModel
  (
    {
      required this.cityName,
      required this.date,
      required this.Image,
      required this.maxTem,
      required this.minTem,
      required this.avgTem,
      required this.stutesText
    }
  );
  factory WeatherModel.fromJason(json)
  {
    return WeatherModel
    (
      cityName: json["location"]["name"],
      date: json["current"]["last_updated"],
      Image: json["forecast"]["forecastday"][0]["day"]["condition"]["icon"],
      maxTem: json["forecast"]["forecastday"][0]["day"]["maxtemp_c"],
      minTem: json["forecast"]["forecastday"][0]["day"]["mintemp_c"],
      avgTem: json["forecast"]["forecastday"][0]["day"]["avgtemp_c"],
      stutesText: json["forecast"]["forecastday"][0]["day"]["condition"]["text"]
    );
  }



}
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
      maxTem: json["forecast"]["forecastday"][0]["day"],
      minTem: json["forecast"]["forecastday"][0]["day"],
      avgTem: json["forecast"]["forecastday"][0]["day"],
      stutesText: json["forecast"]["forecastday"][0]["day"]["condition"]["text"]
    );
  }



}
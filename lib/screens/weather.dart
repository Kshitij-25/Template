import 'package:flutter/material.dart';
import 'package:musk_motor/api.dart';
import 'package:musk_motor/models/weather_model.dart';
import 'package:musk_motor/screens/sign_up.dart';
import 'package:musk_motor/widget/weather_card.dart';

class Weather extends StatefulWidget {
  static const routeName = 'weather';

  @override
  _WeatherState createState() => _WeatherState();
}

class _WeatherState extends State<Weather> {
  Api _api;
  Future<Weather_model> weather_model;
  Future<Weather_model> weather_model1;
  Future<Weather_model> weather_model2;
  Future<Weather_model> weather_model3;
  Future<Weather_model> weather_model4;
  Future<Weather_model> weather_model5;

  @override
  void initState() {
    _api = Api();
    weather_model = _api.getWeather();
    weather_model1 = _api.getWeather1();
    weather_model2 = _api.getWeather2();
    weather_model3 = _api.getWeather3();
    weather_model4 = _api.getWeather4();
    weather_model5 = _api.getWeather5();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFF4EFF6),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              FutureBuilder(
                  future: weather_model,
                  builder: (ctx, snapshot) {
                    if (snapshot.hasData) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: WeatherCard(
                          locationName: '${snapshot.data.location.name}',
                          locationCountry: '${snapshot.data.location.country}',
                          currentTemp: '${snapshot.data.current.temperature}',
                          observationTime:
                              '${snapshot.data.current.observationTime}',
                          humidity: '${snapshot.data.current.humidity}%',
                          windSpeed: '${snapshot.data.current.windSpeed} m/s',
                          windDir: '${snapshot.data.current.windDir}',
                        ),
                      );
                    } else {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                  }),
              FutureBuilder(
                  future: weather_model1,
                  builder: (ctx, snapshot) {
                    if (snapshot.hasData) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: WeatherCard(
                          locationName: '${snapshot.data.location.name}',
                          locationCountry: '${snapshot.data.location.country}',
                          currentTemp: '${snapshot.data.current.temperature}',
                          observationTime:
                              '${snapshot.data.current.observationTime}',
                          humidity: '${snapshot.data.current.humidity}%',
                          windSpeed: '${snapshot.data.current.windSpeed} m/s',
                          windDir: '${snapshot.data.current.windDir}',
                        ),
                      );
                    } else {
                      return Center();
                    }
                  }),
              FutureBuilder(
                  future: weather_model2,
                  builder: (ctx, snapshot) {
                    if (snapshot.hasData) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: WeatherCard(
                          locationName: '${snapshot.data.location.name}',
                          locationCountry: '${snapshot.data.location.country}',
                          currentTemp: '${snapshot.data.current.temperature}',
                          observationTime:
                              '${snapshot.data.current.observationTime}',
                          humidity: '${snapshot.data.current.humidity}%',
                          windSpeed: '${snapshot.data.current.windSpeed} m/s',
                          windDir: '${snapshot.data.current.windDir}',
                        ),
                      );
                    } else {
                      return Center();
                    }
                  }),
              FutureBuilder(
                  future: weather_model3,
                  builder: (ctx, snapshot) {
                    if (snapshot.hasData) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: WeatherCard(
                          locationName: '${snapshot.data.location.name}',
                          locationCountry: '${snapshot.data.location.country}',
                          currentTemp: '${snapshot.data.current.temperature}',
                          observationTime:
                              '${snapshot.data.current.observationTime}',
                          humidity: '${snapshot.data.current.humidity}%',
                          windSpeed: '${snapshot.data.current.windSpeed} m/s',
                          windDir: '${snapshot.data.current.windDir}',
                        ),
                      );
                    } else {
                      return Center();
                    }
                  }),
              FutureBuilder(
                  future: weather_model4,
                  builder: (ctx, snapshot) {
                    if (snapshot.hasData) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: WeatherCard(
                          locationName: '${snapshot.data.location.name}',
                          locationCountry: '${snapshot.data.location.country}',
                          currentTemp: '${snapshot.data.current.temperature}',
                          observationTime:
                              '${snapshot.data.current.observationTime}',
                          humidity: '${snapshot.data.current.humidity}%',
                          windSpeed: '${snapshot.data.current.windSpeed} m/s',
                          windDir: '${snapshot.data.current.windDir}',
                        ),
                      );
                    } else {
                      return Center();
                    }
                  }),
                  FutureBuilder(
                  future: weather_model5,
                  builder: (ctx, snapshot) {
                    if (snapshot.hasData) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: WeatherCard(
                          locationName: '${snapshot.data.location.name}',
                          locationCountry: '${snapshot.data.location.country}',
                          currentTemp: '${snapshot.data.current.temperature}',
                          observationTime:
                              '${snapshot.data.current.observationTime}',
                          humidity: '${snapshot.data.current.humidity}%',
                          windSpeed: '${snapshot.data.current.windSpeed} m/s',
                          windDir: '${snapshot.data.current.windDir}',
                        ),
                      );
                    } else {
                      return Center();
                    }
                  }),
              RaisedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed(SignUp.routeName);
                },
                color: Colors.black,
                child: Text(
                  'SignUp',
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

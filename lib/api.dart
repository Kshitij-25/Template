import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:musk_motor/models/weather_model.dart';

class Api {
  var httpClient = http.Client();
  static const url = "http://api.weatherstack.com/current";
  static const apiKey = "a193695b5a448954a657e7838b9da29a";

  Future<Weather_model> getWeather() async {
    final response = await http.get('$url?access_key=$apiKey&query=New%20York');
    if (response.statusCode == 200) {
      return Weather_model.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load');
    }
  }
  Future<Weather_model> getWeather1() async {
    final response = await http.get('$url?access_key=$apiKey&query=london');
    if (response.statusCode == 200) {
      return Weather_model.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load');
    }
  }
  Future<Weather_model> getWeather2() async {
    final response = await http.get('$url?access_key=$apiKey&query=Singapur');
    if (response.statusCode == 200) {
      return Weather_model.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load');
    }
  }
  Future<Weather_model> getWeather3() async {
    final response = await http.get('$url?access_key=$apiKey&query=Shanghai');
    if (response.statusCode == 200) {
      return Weather_model.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load');
    }
  }
  Future<Weather_model> getWeather4() async {
    final response = await http.get('$url?access_key=$apiKey&query=Mumbai');
    if (response.statusCode == 200) {
      return Weather_model.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load');
    }
  }
  Future<Weather_model> getWeather5() async {
    final response = await http.get('$url?access_key=$apiKey&query=Delhi');
    if (response.statusCode == 200) {
      return Weather_model.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load');
    }
  }
}

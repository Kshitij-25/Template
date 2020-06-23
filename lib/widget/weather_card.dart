import 'package:flutter/material.dart';

class WeatherCard extends StatelessWidget {
  final String locationName;
  final String locationCountry;
  final String currentTemp;
  final String observationTime;
  final String humidity;
  final String windSpeed;
  final String windDir;

  WeatherCard(
      {this.locationName,
      this.locationCountry,
      this.currentTemp,
      this.observationTime,
      this.humidity,
      this.windSpeed,
      this.windDir});
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text(locationName,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900)),
            Text(locationCountry,
                style: TextStyle(fontSize: 12, color: Colors.grey)),
            Text(currentTemp,
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.w900)),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(observationTime, style: TextStyle(fontSize: 15)),
                  Text(humidity, style: TextStyle(fontSize: 18)),
                  Text(windSpeed, style: TextStyle(fontSize: 18)),
                  Text(windDir, style: TextStyle(fontSize: 18))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Weather_model {
  Location location;
  Current current;

  Weather_model({this.location, this.current});

  Weather_model.fromJson(Map<String, dynamic> json) {
    location = json['location'] != null
        ? new Location.fromJson(json['location'])
        : null;
    current =
        json['current'] != null ? new Current.fromJson(json['current']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.location != null) {
      data['location'] = this.location.toJson();
    }
    if (this.current != null) {
      data['current'] = this.current.toJson();
    }
    return data;
  }
}

class Location {
  String name;
  String country;

  Location({
    this.name,
    this.country,
  });

  Location.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    country = json['country'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['country'] = this.country;
    return data;
  }
}

class Current {
  String observationTime;
  int temperature;
  int windSpeed;

  String windDir;
  int humidity;

  Current({
    this.observationTime,
    this.temperature,
    this.windSpeed,
    this.windDir,
    this.humidity,
  });

  Current.fromJson(Map<String, dynamic> json) {
    observationTime = json['observation_time'];
    temperature = json['temperature'];
    windSpeed = json['wind_speed'];
    windDir = json['wind_dir'];
    humidity = json['humidity'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['observation_time'] = this.observationTime;
    data['temperature'] = this.temperature;
    data['wind_speed'] = this.windSpeed;
    data['wind_dir'] = this.windDir;
    data['humidity'] = this.humidity;
    return data;
  }
}

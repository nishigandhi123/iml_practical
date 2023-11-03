class Airport {
  String? icao;
  String? iata;
  String? name;
  String? city;
  String? state;
  String? country;
  int? elevation;
  dynamic lat;
  dynamic lon;
  String? tz;

  Airport({
    this.icao,
    this.iata,
    this.name,
    this.city,
    this.state,
    this.country,
    this.elevation,
    this.lat,
    this.lon,
    this.tz,
  });

  factory Airport.fromJson(Map<String, dynamic> json) {
    return Airport(
      icao: json['icao'] ?? '',
      iata: json['iata'] ?? '',
      name: json['name'] ?? '',
      city: json['city'] ?? '',
      state: json['state'] ?? '',
      country: json['country'] ?? '',
      elevation: json['elevation'] ?? 0,
      lat: json['lat'] ?? 0.0,
      lon: json['lon'] ?? 0.0,
      tz: json['tz'] ?? '',
    );
  }
}

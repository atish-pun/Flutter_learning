// To parse this JSON data, do
//
//     final CovidInfect = CovidInfectFromJson(jsonString);

import 'dart:convert';

List<CovidInfect> covidInfectFromJson(String str) => List<CovidInfect>.from(
    json.decode(str).map((x) => CovidInfect.fromJson(x)));

String covidInfectToJson(List<CovidInfect> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CovidInfect {
  CovidInfect({
    this.id,
    this.country,
    this.countryCode,
    this.totalCases,
    this.newCases,
    this.totalDeaths,
    this.newDeaths,
    this.activeCases,
    this.totalRecovered,
    this.criticalCases,
    this.casesPerOneMillion,
    this.deathsPerOneMillion,
    this.tests,
    this.testsPerOneMillion,
    this.continent,
    this.countryInfo,
    required this.updated,
    this.v,
  });

  String? id;
  String? country;
  String? countryCode;
  int? totalCases;
  int? newCases;
  int? totalDeaths;
  int? newDeaths;
  int? activeCases;
  int? totalRecovered;
  int? criticalCases;
  int? casesPerOneMillion;
  double? deathsPerOneMillion;
  int? tests;
  double? testsPerOneMillion;
  Continent? continent;
  CountryInfo? countryInfo;
  DateTime updated;
  int? v;

  factory CovidInfect.fromJson(Map<String, dynamic> json) => CovidInfect(
        id: json["_id"],
        country: json["country"],
        countryCode: json["countryCode"] == null ? null : json["countryCode"],
        totalCases: json["totalCases"],
        newCases: json["newCases"],
        totalDeaths: json["totalDeaths"],
        newDeaths: json["newDeaths"],
        activeCases: json["activeCases"],
        totalRecovered: json["totalRecovered"],
        criticalCases: json["criticalCases"],
        casesPerOneMillion: json["casesPerOneMillion"],
        deathsPerOneMillion: json["deathsPerOneMillion"].toDouble(),
        tests: json["tests"],
        testsPerOneMillion: json["testsPerOneMillion"].toDouble(),
        continent: json["continent"] == null
            ? null
            : continentValues.map[json["continent"]],
        countryInfo: json["countryInfo"] == null
            ? null
            : CountryInfo.fromJson(json["countryInfo"]),
        updated: DateTime.parse(json["updated"]),
        v: json["__v"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "country": country,
        "countryCode": countryCode == null ? null : countryCode,
        "totalCases": totalCases,
        "newCases": newCases,
        "totalDeaths": totalDeaths,
        "newDeaths": newDeaths,
        "activeCases": activeCases,
        "totalRecovered": totalRecovered,
        "criticalCases": criticalCases,
        "casesPerOneMillion": casesPerOneMillion,
        "deathsPerOneMillion": deathsPerOneMillion,
        "tests": tests,
        "testsPerOneMillion": testsPerOneMillion,
        "continent":
            continent == null ? null : continentValues.reverse[continent],
        "countryInfo": countryInfo == null ? null : countryInfo!.toJson(),
        "updated": updated.toIso8601String(),
        "__v": v,
      };
}

enum Continent {
  NORTH_AMERICA,
  ASIA,
  SOUTH_AMERICA,
  EUROPE,
  AFRICA,
  AUSTRALIA_OCEANIA,
  EMPTY
}

final continentValues = EnumValues({
  "Africa": Continent.AFRICA,
  "Asia": Continent.ASIA,
  "Australia/Oceania": Continent.AUSTRALIA_OCEANIA,
  "": Continent.EMPTY,
  "Europe": Continent.EUROPE,
  "North America": Continent.NORTH_AMERICA,
  "South America": Continent.SOUTH_AMERICA
});

class CountryInfo {
  CountryInfo({
    this.id,
    this.iso2,
    this.iso3,
    this.lat,
    this.long,
    this.flag,
  });

  int? id;
  String? iso2;
  String? iso3;
  double? lat;
  double? long;
  String? flag;

  factory CountryInfo.fromJson(Map<String, dynamic> json) => CountryInfo(
        id: json["_id"] == null ? null : json["_id"],
        iso2: json["iso2"] == null ? null : json["iso2"],
        iso3: json["iso3"] == null ? null : json["iso3"],
        lat: json["lat"].toDouble(),
        long: json["long"].toDouble(),
        flag: json["flag"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id == null ? null : id,
        "iso2": iso2 == null ? null : iso2,
        "iso3": iso3 == null ? null : iso3,
        "lat": lat,
        "long": long,
        "flag": flag,
      };
}

class EnumValues<T> {
  late Map<String, T> map;
  late Map<T, String>? reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap!;
  }
}

// To parse this JSON data, do
//
//     final CovidMyths = welcomeFromJson(jsonString);

import 'dart:convert';

CovidMyths covidMythsFromJson(String str) =>
    CovidMyths.fromJson(json.decode(str));

String covidMythsToJson(CovidMyths data) => json.encode(data.toJson());

class CovidMyths {
  CovidMyths({
    this.data,
    this.total,
    this.limit,
    this.start,
    this.page,
  });

  List<CovidMythsData>? data;
  int? total;
  int? limit;
  int? start;
  int? page;

  factory CovidMyths.fromJson(Map<String, dynamic> json) => CovidMyths(
        data: List<CovidMythsData>.from(
            json["data"].map((x) => CovidMythsData.fromJson(x))),
        total: json["total"],
        limit: json["limit"],
        start: json["start"],
        page: json["page"],
      );

  Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data!.map((x) => x.toJson())),
        "total": total,
        "limit": limit,
        "start": start,
        "page": page,
      };
}

class CovidMythsData {
  CovidMythsData({
    this.id,
    this.type,
    this.lang,
    this.myth,
    this.mythNp,
    this.reality,
    this.realityNp,
    this.imageUrl,
    this.sourceName,
    this.sourceUrl,
    this.createdAt,
    this.updatedAt,
    this.v,
  });

  String? id;
  Type? type;
  Lang? lang;
  String? myth;
  String? mythNp;
  String? reality;
  String? realityNp;
  String? imageUrl;
  String? sourceName;
  String? sourceUrl;
  DateTime? createdAt;
  DateTime? updatedAt;
  int? v;

  factory CovidMythsData.fromJson(Map<String, dynamic> json) => CovidMythsData(
        id: json["_id"],
        type: typeValues.map[json["type"]],
        lang: langValues.map[json["lang"]],
        myth: json["myth"],
        mythNp: json["myth_np"] == null ? null : json["myth_np"],
        reality: json["reality"],
        realityNp: json["reality_np"] == null ? null : json["reality_np"],
        imageUrl: json["image_url"] == null ? null : json["image_url"],
        sourceName: json["source_name"],
        sourceUrl: json["source_url"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        v: json["__v"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "type": typeValues.reverse[type],
        "lang": langValues.reverse[lang],
        "myth": myth,
        "myth_np": mythNp == null ? null : mythNp,
        "reality": reality,
        "reality_np": realityNp == null ? null : realityNp,
        "image_url": imageUrl == null ? null : imageUrl,
        "source_name": sourceName,
        "source_url": sourceUrl,
        "created_at": createdAt == null ? null : createdAt!.toIso8601String(),
        "updated_at": updatedAt == null ? null : updatedAt!.toIso8601String(),
        "__v": v,
      };
}

enum Lang { EN, NP }

final langValues = EnumValues({"en": Lang.EN, "np": Lang.NP});

enum Type { IMAGE, TEXT }

final typeValues = EnumValues({"image": Type.IMAGE, "text": Type.TEXT});

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

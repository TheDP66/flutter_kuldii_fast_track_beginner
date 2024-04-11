// To parse this JSON data, do
//
//     final provinceModel = provinceModelFromJson(jsonString);

import 'dart:convert';

List<ProvinceModel> provinceModelFromJson(String str) =>
    List<ProvinceModel>.from(
        json.decode(str).map((x) => ProvinceModel.fromJson(x)));

String provinceModelToJson(List<ProvinceModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ProvinceModel {
  ProvinceModel({
    required this.id,
    required this.name,
  });

  String id;
  String name;

  factory ProvinceModel.fromJson(Map<String, dynamic> json) => ProvinceModel(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };
}

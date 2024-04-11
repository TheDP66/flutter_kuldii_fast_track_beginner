import 'dart:convert';

import 'package:Instagram_Clone/section6/models/provinceModel.dart';
import 'package:dio/dio.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';

class DiscoverPage extends StatelessWidget {
  List<Map<String, dynamic>> dataList = [
    {
      "country": "Brazil",
      "id": 1,
    },
    {
      "country": "Italia",
      "id": 2,
    },
    {
      "country": "Tunisia",
      "id": 3,
    },
    {
      "country": "Canada",
      "id": 4,
    },
    {
      "country": "Indonesia",
      "id": 5,
    },
  ];

  final url = "http://www.emsifa.com/api-wilayah-indonesia/api/provinces.json";

  Future<List<ProvinceModel>> getData(filter) async {
    var response = await Dio().get(
      "https://5d85ccfb1e61af001471bf60.mockapi.io/user",
      queryParameters: {"filter": filter},
    );

    final data = response.data;
    if (data != null) {
      // return ProvinceModel.fromJson(data);
    }

    return [];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: DropdownSearch<Map<String, dynamic>>(
        popupProps: PopupProps.menu(
          showSearchBox: true,
          // showSelectedItems: true,
          // disabledItemFn: (String s) => s.startsWith('I'),
          itemBuilder: (context, item, isSelected) => ListTile(
            title: Text(item['country'].toString()),
          ),
        ),
        //// Async
        asyncItems: (text) async {
          print("Fetching...");
          var response = await Dio().get(url);

          print(response.statusCode);
          if (response.statusCode != 200) {
            return [];
          }

          print(response.data);

          print("Converting");
          // Future<List<String, dynamic>> models = json.decode(response.data);

          return [];
        },
        //// Static
        // items: dataList,
        dropdownBuilder: (context, selectedItem) =>
            Text(selectedItem?['country'].toString() ?? "Belum Pilih Negara"),
        dropdownDecoratorProps: const DropDownDecoratorProps(
          dropdownSearchDecoration: InputDecoration(
            labelText: "Menu mode",
            hintText: "country in menu mode",
          ),
        ),
        onChanged: (value) => print(value?['id'] ?? -1),
        selectedItem: const {
          "country": "Indonesia",
          "id": 5,
        },
      ),
    );
  }
}

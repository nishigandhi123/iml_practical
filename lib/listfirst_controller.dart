import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import 'list_model.dart';

class ListFirstController extends GetxController {

  var airports = <Airport>[].obs;
  var isLoading = true.obs;
  //String? name, icao, city, state, country;

  @override
  void onInit() {
    getList();
    super.onInit();
  }

  Future<void> getList() async {
    
    final response = await http.get(Uri.parse('https://raw.githubusercontent.com/mwgg/Airports/master/airports.json'));

    if (response.statusCode == 200) {
      //print('Response Data : ${response.body}');
      final Map<String, dynamic> jsonData = jsonDecode(response.body);
      airports.value = jsonData.values.map((entry) => Airport.fromJson(entry)).toList();
      print("aaa${airports.length}");
      isLoading.value = false;
    } else {
      print('Failed to fetch Data Status Code : ${response.statusCode}');
    }
  }
}
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class DetailViewController extends GetxController {

  dynamic lat, long;
  String? name, icao, city, state, country, tz;
  LatLng? markerLocation;
  late GoogleMapController mapController;

  @override
  void onInit() {
    lat = Get.arguments[0];
    long = Get.arguments[1];
    name = Get.arguments[2];
    icao = Get.arguments[3];
    city = Get.arguments[4];
    state = Get.arguments[5];
    country = Get.arguments[6];
    tz = Get.arguments[7];
    markerLocation = LatLng(lat, long);
    super.onInit();
  }

}
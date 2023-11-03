import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'detail_view_controller.dart';

class DetailView extends GetView<DetailViewController> {
  const DetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 300,
                child: GoogleMap(
                  initialCameraPosition: CameraPosition(
                      target: controller.markerLocation!, zoom: 14.0),
                  onMapCreated: (controllers) {
                    controller.mapController = controllers;
                  },
                  markers: {
                    Marker(
                        markerId: const MarkerId('marker_id'),
                        position: controller.markerLocation!,
                        infoWindow: const InfoWindow(
                          title: 'Marker Title',
                          snippet: 'Marker Snippet',
                        ))
                  },
                ),
              ), const SizedBox(height: 25,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Name : ${controller.name!}"),
                  const SizedBox(
                    width: 20,
                  ),
                  Text("icao : ${controller.icao!}")
                ],
              ), const SizedBox(height: 15,),
              Text("city : ${controller.city},    state : ${controller.state}"),
              const SizedBox(height: 15,),
              Text("country : ${controller.country!}"),
              const SizedBox(height: 15,),
              Text("tz : ${controller.tz!}")
            ],
          ),
        ),
      ),
    );
  }
}

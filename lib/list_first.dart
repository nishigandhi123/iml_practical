import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'app_pages.dart';
import 'detail_view.dart';
import 'listfirst_controller.dart';

class ListFirst extends GetView<ListFirstController> {
  const ListFirst({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ListFirstController>(
      init: ListFirstController(),
      builder: (controller) {
        return Scaffold(body: Obx(() {
          return controller.isLoading.value
              ? const Center(child: CircularProgressIndicator())
              : controller.airports.isNotEmpty
                  ? Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: ListView.builder(
                          itemCount: controller.airports.length,
                          itemBuilder: (BuildContext context, int index) {
                            final data = controller.airports[index];
                            return Column(
                              children: [
                                InkWell(
                                  onTap: () {
                                    Get.toNamed(Routes.DETAIL, arguments: [
                                      data.lat,
                                      data.lon,
                                      data.name,
                                      data.icao,
                                      data.city,
                                      data.state,
                                      data.country,
                                      data.tz
                                    ]);
                                  },
                                  child: Row(
                                    children: [
                                      Text(data.name!),
                                      const SizedBox(
                                        width: 15,
                                      ),
                                      Text(data.icao!)
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 5),
                                InkWell(
                                  onTap: () {
                                    Get.toNamed(Routes.DETAIL, arguments: [
                                      data.lat,
                                      data.lon,
                                      data.name,
                                      data.icao,
                                      data.city,
                                      data.state,
                                      data.country,
                                      data.tz
                                    ]);
                                  },
                                  child: Row(
                                    children: [
                                      Text("${data.city}, ${data.state}"),
                                      const SizedBox(
                                        width: 15,
                                      ),
                                      Text(data.country!)
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 25,
                                )
                              ],
                            );
                          }),
                    )
                  : const Center(
                      child: Text(
                      "There is no Data",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ));
        }));
      },
    );
  }
}

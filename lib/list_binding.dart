import 'package:get/get.dart';
import 'listfirst_controller.dart';

class ListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ListFirstController>(
          () => ListFirstController(),
    );
  }

}
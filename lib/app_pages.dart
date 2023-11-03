
import 'package:get/get.dart';

import 'detail_binding.dart';
import 'detail_view.dart';
import 'list_binding.dart';
import 'list_first.dart';
part 'app_routes.dart';

class AppPages {
  AppPages._();

  static final routes = [
    GetPage(
      name: _Paths.LIST,
      page: () => ListFirst(),
      binding: ListBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL,
      page: () => const DetailView(),
      binding: DetailBinding(),
    ),
  ];
}

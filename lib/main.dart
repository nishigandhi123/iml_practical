import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:ingeniousmindslabnishipractical/app_pages.dart';
import 'color_schemes.dart';

void main() {

  runApp(
    GetMaterialApp(
      title: "Ingeniousmindslabnishipractical",
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.LIST,
      getPages: AppPages.routes,
      themeMode: ThemeMode.system,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: lightColorScheme,
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        colorScheme: darkColorScheme,
        brightness: Brightness.dark,
      ),
      builder: EasyLoading.init(),
    ),
  );
}

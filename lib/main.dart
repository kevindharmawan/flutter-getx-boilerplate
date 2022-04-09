import 'package:boilerplate/app_binding.dart';
import 'package:boilerplate/utils/routes/app_pages.dart';
import 'package:boilerplate/utils/translations/messages.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Services initialization
  await GetStorage.init();

  // Device orientation
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) => runApp(const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: AppBinding(),
      initialRoute: AppViews.initial,
      getPages: AppViews.routes,
      title: 'App Title',
      translations: Messages(),
    );
  }
}

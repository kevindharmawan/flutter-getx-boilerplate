import 'package:boilerplate/utils/theme/theme_controller.dart';
import 'package:boilerplate/utils/translations/translation_controller.dart';
import 'package:get/get.dart';

class AppBinding extends Bindings {
  @override
  void dependencies() async {
    Get.put(TranslationController());
    Get.put(ThemeController());
  }
}

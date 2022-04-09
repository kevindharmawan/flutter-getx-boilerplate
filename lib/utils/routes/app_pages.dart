import 'package:boilerplate/modules/home/_home.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

class AppViews {
  static const initial = AppRoutes.splash;

  static final routes = [
    GetPage(
      name: AppRoutes.home,
      page: () => const HomeView(),
    ),
  ];
}

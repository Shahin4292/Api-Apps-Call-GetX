import 'package:api_call_getx/app/module/home/binding/home_binding.dart';
import 'package:get/get.dart';

import '../module/home/view/home_view.dart';

class AppRoutes {
  static final String initialRoutes = '/home';

  static final routes = [
    GetPage(
        name: '/home', page: () => const HomeView(), binding: HomeBinding()),
  ];
}

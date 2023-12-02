import 'package:HexHome/app/modules/home/home_pages.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const initial = Routes.home;

  static final routes = [
    ...homePages,
  ];
}

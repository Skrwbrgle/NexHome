import 'package:HexHome/app/modules/home/views/detail_house.dart';
import 'package:HexHome/app/modules/home/views/home_view.dart';
import 'package:HexHome/app/routes/app_pages.dart';
import 'package:get/get.dart';

final homePages = [
  GetPage(
    name: Routes.home,
    page: () => const HomeView(),
    participatesInRootNavigator: true,
    preventDuplicates: true,
  )
];

final detailHouse = [
  GetPage(
    name: Routes.detailHouse,
    page: () => DetailHouse(),
    participatesInRootNavigator: true,
    preventDuplicates: true,
  )
];

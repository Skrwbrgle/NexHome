import 'package:HexHome/app/models/model_house.dart';
import 'package:HexHome/app/modules/home/views/favorit_view.dart';
import 'package:HexHome/app/modules/home/views/profile_view.dart';
import 'package:HexHome/app/routes/app_pages.dart';
import 'package:HexHome/app/widgets/headerHome.dart';
import 'package:HexHome/app/widgets/houseCard.dart';
import 'package:HexHome/res/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  final _tabs = [
    {'icon': Icons.home_filled, 'activeIcon': Icons.home_rounded},
    {'icon': Icons.favorite_border_outlined, 'activeIcon': Icons.favorite},
    {'icon': Icons.shopping_cart_outlined, 'activeIcon': Icons.shopping_cart},
    {'icon': Icons.person_outline_outlined, 'activeIcon': Icons.person},
  ];

  String? selectedLocation;
  // ignore: unused_field
  final _location = {
    'Bali',
    'Jawa',
    'Kalimantan',
    'Sumatera',
    'Sulawesi',
    'Papua',
  };

  @override
  void initState() {
    _tabController = TabController(length: _tabs.length, vsync: this);
    _tabController.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  Widget _buildTabContent(int index) {
    switch (index) {
      case 0:
        return _buildPageView(); // Tampilan daftar rumah
      case 1:
        return const FavoritView();
      case 2:
        return _buildCartTab();
      default:
        return const ProfileView();
    }
  }

  Widget _buildPageView() {
    return Column(
      children: [
        const HeaderHome(),
        Flexible(
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 75 / 100,
            width: double.infinity,
            child: PageView.builder(
              itemCount: dummyHouses.length,
              controller: PageController(viewportFraction: 1),
              itemBuilder: (context, index) {
                final houseData = dummyHouses[index];
                return InkWell(
                  onTap: () {
                    Get.toNamed(Routes.detailHouse, arguments: houseData);
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(
                      bottom: 40,
                      left: 25,
                      right: 25,
                    ),
                    child: HouseCard(houseData: houseData),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildFavoritTab() {
    return const Center(
      child: Text(
        'Search Tab Content',
        style: TextStyle(color: Colors.amber),
      ),
    );
  }

  Widget _buildCartTab() {
    return const Center(
      child: Text(
        'Favorite Tab Content', // Gantilah dengan konten favorit yang sesuai
        style: TextStyle(color: Colors.red),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: SafeArea(
        child: Column(
          children: [
            Flexible(
              child: TabBarView(
                controller: _tabController,
                physics:
                    const NeverScrollableScrollPhysics(), // Tidak dapat menggeser secara langsung
                children: [
                  for (int i = 0; i < _tabs.length; i++) _buildTabContent(i),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        margin: const EdgeInsets.only(left: 25, right: 25, bottom: 25, top: 15),
        height: kToolbarHeight + 20,
        decoration: BoxDecoration(
          color: AppColors.utility,
          borderRadius: BorderRadius.circular(23),
        ),
        child: TabBar(
          controller: _tabController,
          padding: const EdgeInsets.symmetric(horizontal: 10),
          indicatorSize: TabBarIndicatorSize.tab,
          indicatorPadding:
              const EdgeInsets.symmetric(vertical: 18, horizontal: 20),
          indicator: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: AppColors.activeTab,
          ),
          labelColor: Colors.white,
          unselectedLabelColor: AppColors.iconTab,
          tabs: _tabs.map((tab) {
            return Tab(
              icon: Icon(
                _tabController.index == _tabs.indexOf(tab)
                    ? tab['activeIcon']
                    : tab['icon'],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}

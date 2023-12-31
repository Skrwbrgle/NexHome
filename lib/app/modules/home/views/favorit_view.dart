import 'package:HexHome/app/models/model_house.dart';
import 'package:HexHome/app/widgets/cardFavorit.dart';
import 'package:HexHome/app/widgets/headerHome.dart';
import 'package:HexHome/res/colors.dart';
import 'package:flutter/material.dart';

class FavoritView extends StatefulWidget {
  const FavoritView({super.key});

  @override
  State<FavoritView> createState() => _FavoritViewState();
}

class _FavoritViewState extends State<FavoritView> {
  bool isFavorite = false;
  String? selectedLocation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const HeaderHome(),
            Flexible(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30.0),
                    child: Text(
                      "Your's Favorit House",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Flexible(
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height * 58 / 100,
                      width: double.infinity,
                      child: Flexible(
                        child: PageView.builder(
                          itemCount: dummyHouses.length,
                          clipBehavior: Clip.antiAlias,
                          controller: PageController(viewportFraction: 0.325),
                          scrollDirection: Axis.vertical,
                          padEnds: false,
                          itemBuilder: (context, index) {
                            final houseData = dummyHouses[index];
                            return Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20.0, vertical: 10),
                              child: CardFavorit(
                                houseData: houseData,
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

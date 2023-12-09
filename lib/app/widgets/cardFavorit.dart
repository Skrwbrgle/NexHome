// ignore: file_names
import 'package:HexHome/app/models/model_house.dart';
import 'package:HexHome/res/colors.dart';
import 'package:flutter/material.dart';

class CardFavorit extends StatelessWidget {
  final modelHouse houseData;
  const CardFavorit({super.key, required this.houseData});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.20,
      width: double.infinity,
      child: Card(
        elevation: 3,
        shadowColor: Colors.black.withOpacity(1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(27),
        ),
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 20 / 100,
              width: double.infinity,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: AppColors.utility.withOpacity(0.4),
                    spreadRadius: 1,
                    blurRadius: 20,
                    offset: const Offset(0, 20),
                  ),
                ],
                borderRadius: BorderRadius.circular(27),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(27),
                child: Image.asset(
                  houseData.imageAsset,
                  scale: 1.0,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Flexible(
              child: Container(
                height: MediaQuery.of(context).size.height * 20 / 100,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(27),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.transparent,
                      Colors.black.withOpacity(0.4),
                    ],
                  ),
                ),
              ),
            ),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  houseData.title,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Poppins-ExtraBold',
                                    fontSize: 20,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                                const SizedBox(
                                  height: 6,
                                ),
                                Text(
                                  houseData.location,
                                  style: const TextStyle(
                                      color: Colors.white, fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Container(
                              width: 40,
                              height: kToolbarHeight - 8,
                              padding: const EdgeInsets.only(top: 2),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: const Color(0xFF59656D).withOpacity(0.9),
                                border: Border.all(
                                  color: AppColors.activeTab.withOpacity(0.8),
                                  width: 7,
                                  strokeAlign: BorderSide.strokeAlignOutside,
                                ),
                              ),
                              child: const Icon(
                                Icons.favorite,
                                color: Colors.white,
                                size: 25,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

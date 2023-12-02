import 'package:HexHome/app/models/model_house.dart';
import 'package:HexHome/app/widgets/houseCard.dart';
import 'package:HexHome/res/colors.dart';
import 'package:flutter/material.dart';

class CardListView extends StatefulWidget {
  const CardListView({super.key});

  @override
  State<CardListView> createState() => _CardListViewState();
}

class _CardListViewState extends State<CardListView> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final modelHouse house = dummyHouses[index];
        return InkWell(
          onTap: () {},
          child: Card(
            elevation: 8,
            shadowColor: Colors.black.withOpacity(1),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(27),
            ),
            child: Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 55 / 100,
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
                    child: Image.network(
                      'https://i.pinimg.com/564x/2b/0e/d8/2b0ed8eef2ef33eaeb9cca6c3e960384.jpg',
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 55 / 100,
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
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            padding: const EdgeInsets.only(
                                right: 18, left: 15, top: 8, bottom: 8),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: AppColors.activeTab.withOpacity(0.7),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.push_pin_outlined,
                                  color: Color.fromARGB(255, 231, 24, 9),
                                  size: 18,
                                ),
                                SizedBox(
                                  width: 7,
                                ),
                                Text(
                                  'Maps',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Poppins-bold',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Flexible(
                            child: Column(
                              children: [
                                Text(
                                  'Black Modern House',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Poppins-ExtraBold',
                                    fontSize: 25,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                isFavorite = !isFavorite;
                                print('You Liked');
                              });
                            },
                            child: Container(
                              width: 60,
                              height: kToolbarHeight - 8,
                              padding: const EdgeInsets.only(top: 2),
                              margin: const EdgeInsets.only(top: 20),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: const Color(0xFF59656D).withOpacity(0.9),
                                border: Border.all(
                                  color: AppColors.activeTab.withOpacity(0.8),
                                  width: 7,
                                  strokeAlign: BorderSide.strokeAlignOutside,
                                ),
                              ),
                              child: Icon(
                                isFavorite
                                    ? Icons.favorite
                                    : Icons.favorite_border,
                                color: Colors.white,
                                size: 25,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 23,
                      ),
                      const Text(
                        'Broadway Street, New york',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
      itemCount: dummyHouses.length,
    );
  }
}

import 'package:HexHome/app/models/model_house.dart';
import 'package:flutter/material.dart';
import 'package:HexHome/res/colors.dart';

class HouseCard extends StatefulWidget {
  final modelHouse houseData;
  const HouseCard({Key? key, required this.houseData}) : super(key: key);

  @override
  State<HouseCard> createState() => _HouseCardState();
}

class _HouseCardState extends State<HouseCard> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      shadowColor: Colors.black.withOpacity(1),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(27),
      ),
      child: Stack(
        children: [
          Hero(
            tag: widget.houseData.title,
            child: Container(
              height: MediaQuery.of(context).size.height * 100 / 100,
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
                  widget.houseData.imageAsset,
                  scale: 1.0,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Flexible(
            child: Container(
              height: MediaQuery.of(context).size.height * 100 / 100,
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            child: Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Spacer(
                          flex: 4,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: Text(
                                widget.houseData.title,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Poppins-ExtraBold',
                                  fontSize: 30,
                                  fontWeight: FontWeight.w900,
                                ),
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
                                  color:
                                      const Color(0xFF59656D).withOpacity(0.9),
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
                        Flexible(
                          child: Text(
                            widget.houseData.location,
                            style: const TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

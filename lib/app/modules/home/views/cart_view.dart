import 'package:HexHome/res/colors.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:styled_divider/styled_divider.dart';
import 'package:flutter/material.dart';

class CartView extends StatelessWidget {
  const CartView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height,
              width: double.infinity,
              child: Stack(
                children: [
                  Flexible(
                    child: ClipRRect(
                      child: Image.asset(
                        'images/black-modern-house.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: SlideTransition(
                      position: Tween<Offset>(
                        begin: const Offset(0, 2),
                        end: const Offset(0, 0),
                      ).animate(CurvedAnimation(
                        parent: ModalRoute.of(context)!.animation!,
                        curve: Curves.easeInOut,
                      )),
                      child: Stack(
                        children: [
                          Container(
                            height: 400,
                            width: double.infinity,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(40),
                                topRight: Radius.circular(40),
                              ),
                              color: AppColors.primary,
                            ),
                            child: Container(
                              margin: const EdgeInsets.only(
                                  top: 24, left: 24, right: 24, bottom: 10),
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(27),
                                  topRight: Radius.circular(27),
                                ),
                                color: Colors.white,
                              ),
                              child: Flexible(
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Flexible(
                                    child: ListView(
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const Text('House Access'),
                                            const Text(
                                              'Black Modern House',
                                              style: TextStyle(
                                                fontSize: 24,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            Container(
                                              height: 80,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                color: AppColors.iconTab
                                                    .withOpacity(0.7),
                                              ),
                                              child: const Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        'Class',
                                                        style: TextStyle(
                                                            color: AppColors
                                                                .utility,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontSize: 12),
                                                      ),
                                                      Text(
                                                        'Modern 2E',
                                                        style: TextStyle(
                                                            color: AppColors
                                                                .secondary,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontSize: 16),
                                                      ),
                                                    ],
                                                  ),
                                                  Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        'Type',
                                                        style: TextStyle(
                                                            color: AppColors
                                                                .utility,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontSize: 12),
                                                      ),
                                                      Text(
                                                        'Smart Home',
                                                        style: TextStyle(
                                                            color: AppColors
                                                                .secondary,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontSize: 16),
                                                      ),
                                                    ],
                                                  ),
                                                  Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        'Group',
                                                        style: TextStyle(
                                                            color: AppColors
                                                                .utility,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontSize: 12),
                                                      ),
                                                      Text(
                                                        'B',
                                                        style: TextStyle(
                                                            color: AppColors
                                                                .secondary,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontSize: 16),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            Container(
                                              height: 80,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                color: AppColors.iconTab
                                                    .withOpacity(0.7),
                                              ),
                                              child: const Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                children: [
                                                  Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        'Chack-In',
                                                        style: TextStyle(
                                                            color: AppColors
                                                                .utility,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontSize: 12),
                                                      ),
                                                      Text(
                                                        '28 Feb 2021',
                                                        style: TextStyle(
                                                            color: AppColors
                                                                .secondary,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontSize: 16),
                                                      ),
                                                    ],
                                                  ),
                                                  Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        'Expired',
                                                        style: TextStyle(
                                                            color: AppColors
                                                                .utility,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontSize: 12),
                                                      ),
                                                      Text(
                                                        '30 Dec 2023',
                                                        style: TextStyle(
                                                            color: AppColors
                                                                .secondary,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontSize: 16),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            const StyledDivider(
                                              color: AppColors.hightlight,
                                              height: 50,
                                              thickness: 3,
                                              lineStyle:
                                                  DividerLineStyle.dashed,
                                              indent: 20,
                                              endIndent: 20,
                                            ),
                                            Container(
                                              alignment: Alignment.center,
                                              child: QrImageView(
                                                data: '1234567890',
                                                version: QrVersions.auto,
                                                size: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.7,
                                                dataModuleStyle:
                                                    const QrDataModuleStyle(
                                                  dataModuleShape:
                                                      QrDataModuleShape.square,
                                                  color: AppColors.utility,
                                                ),
                                                eyeStyle: const QrEyeStyle(
                                                  eyeShape: QrEyeShape.square,
                                                  color: AppColors.utility,
                                                ),
                                              ),
                                            ),
                                            const StyledDivider(
                                              color: AppColors.hightlight,
                                              height: 50,
                                              thickness: 3,
                                              lineStyle:
                                                  DividerLineStyle.dashed,
                                              indent: 20,
                                              endIndent: 20,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 9,
                            left: MediaQuery.of(context).size.width * 0.4,
                            right: MediaQuery.of(context).size.width * 0.4,
                            child: Container(
                              alignment: Alignment.center,
                              height: 5,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                color: AppColors.utility,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

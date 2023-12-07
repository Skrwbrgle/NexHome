import 'package:HexHome/res/colors.dart';
import 'package:flutter/material.dart';

class HeaderHome extends StatefulWidget {
  const HeaderHome({super.key});

  @override
  State<HeaderHome> createState() => _HeaderHomeState();
}

class _HeaderHomeState extends State<HeaderHome> {
  @override
  Widget build(BuildContext context) {
    String? selectedLocation;
    final _location = {
      'Bali',
      'Jawa',
      'Kalimantan',
      'Sumatera',
      'Sulawesi',
      'Papua',
    };

    return Padding(
      padding: const EdgeInsets.only(
        left: 25,
        right: 25,
        top: 10,
        bottom: 10,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DropdownButton(
                    borderRadius: BorderRadius.circular(20),
                    padding: const EdgeInsets.only(
                      left: 4,
                      top: 10,
                    ),
                    underline: Container(height: 0),
                    alignment: Alignment.centerRight,
                    style:
                        const TextStyle(fontSize: 12, color: AppColors.iconTab),
                    icon: const Icon(
                      Icons.keyboard_arrow_down_rounded,
                      color: AppColors.hightlight,
                    ),
                    iconSize: 18,
                    hint: const Text(
                      'Location',
                      style: TextStyle(
                        color: AppColors.textPrgrf,
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                        fontFamily: 'Poppins-light',
                      ),
                    ),
                    items: _location.map(
                      (String loc) {
                        return DropdownMenuItem(
                          value: loc,
                          child: Text(loc),
                        );
                      },
                    ).toList(),
                    onChanged: (String? value) {
                      setState(() {
                        selectedLocation = value;
                      });
                    },
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.location_on,
                        color: AppColors.hightlight,
                        size: 20,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      selectedLocation != null
                          ? Text(
                              '$selectedLocation,',
                              style: const TextStyle(
                                color: AppColors.textTitle,
                                fontWeight: FontWeight.w700,
                                fontSize: 20,
                                fontFamily: 'Poppons-Medium',
                              ),
                            )
                          : const Text(
                              'Bali,',
                              style: TextStyle(
                                color: AppColors.textTitle,
                                fontWeight: FontWeight.w700,
                                fontSize: 20,
                                fontFamily: 'Poppons-Medium',
                              ),
                            ),
                      const SizedBox(
                        width: 6,
                      ),
                      const Text(
                        'Indonesia',
                        style: TextStyle(
                            color: AppColors.textTitle,
                            fontWeight: FontWeight.w300,
                            fontFamily: 'Poppons-light',
                            fontSize: 20),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(top: 19, right: 5),
                width: 45,
                height: kToolbarHeight - 10,
                decoration: BoxDecoration(
                  color: AppColors.secondary,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.utility.withOpacity(0.1),
                      spreadRadius: 3,
                      blurRadius: 25,
                      offset: const Offset(0, 7),
                    ),
                  ],
                ),
                child: InkWell(
                  onTap: () {
                    print("Notification clicked!");
                  },
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      const Icon(
                        Icons.notifications,
                        color: AppColors.textPrgrf,
                        size: 28,
                      ),
                      Positioned(
                        top: 13,
                        right: 12,
                        child: Container(
                          width: 8,
                          height: 8,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.hightlight,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Container(
            height: kToolbarHeight,
            width: double.infinity,
            margin: const EdgeInsets.symmetric(vertical: 28),
            padding: const EdgeInsets.only(left: 20, right: 8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: AppColors.utility.withOpacity(0.1),
                  spreadRadius: -3,
                  blurRadius: 10,
                  offset: const Offset(0, 5),
                ),
              ],
            ),
            alignment: Alignment.center,
            child: Stack(
              children: [
                Positioned(
                  right: 0,
                  top: 0,
                  child: Container(
                    height: kToolbarHeight - 14,
                    width: 44,
                    margin: const EdgeInsets.symmetric(vertical: 3),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13),
                      color: AppColors.utility,
                    ),
                    child: InkWell(
                      onTap: () {
                        print('Filter clicked');
                      },
                      child: const Icon(
                        Icons.dns_rounded,
                        color: AppColors.secondary,
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(right: 55),
                  child: TextField(
                    cursorColor: AppColors.hightlight,
                    onChanged: (value) {},
                    decoration: const InputDecoration(
                      icon: Icon(
                        Icons.search_rounded,
                        color: AppColors.textPrgrf,
                        size: 28,
                      ),
                      hintText: 'Search House',
                      hintFadeDuration: Durations.medium2,
                      border: InputBorder.none,
                      hintStyle: TextStyle(
                        color: AppColors.textPrgrf,
                        fontFamily: 'Poppins-SemiBold',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

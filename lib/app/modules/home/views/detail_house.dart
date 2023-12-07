import 'package:HexHome/app/models/model_house.dart';
import 'package:HexHome/res/colors.dart';
import 'package:flutter/material.dart';
import 'package:expandable_text/expandable_text.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class DetailHouse extends StatelessWidget {
  final modelHouse? houseData;

  DetailHouse({Key? key})
      : houseData = Get.arguments as modelHouse?,
        super(key: key);

  // ignore: unused_field
  GoogleMapController? _mapController;

  void _onMapCreated(GoogleMapController controller) {
    _mapController = controller;
  }

  Set<Marker> _createMarkers() {
    return {
      Marker(
        markerId: MarkerId(houseData!.id.toString()),
        position: LatLng(houseData!.latitude, houseData!.longitude),
        infoWindow: InfoWindow(
          title: houseData?.title ?? '',
          snippet: houseData?.location ?? '',
        ),
      ),
    };
  }

  Widget _buildMap() {
    return SizedBox(
      height: 200,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: GoogleMap(
          onMapCreated: _onMapCreated,
          initialCameraPosition: CameraPosition(
            target: LatLng(houseData!.latitude, houseData!.longitude),
            zoom: 12.0,
          ),
          markers: _createMarkers(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 50 / 100,
                  child: Stack(
                    children: [
                      Hero(
                        tag: houseData?.title ?? '',
                        child: Container(
                          alignment: Alignment.topCenter,
                          height: MediaQuery.of(context).size.height * 50 / 100,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(35),
                            child: Image.asset(
                              houseData?.imageAsset ?? '',
                              fit: BoxFit.cover,
                              scale: 1.0,
                              width: double.infinity,
                              height:
                                  MediaQuery.of(context).size.height * 50 / 100,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 50 / 100,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.transparent,
                              Colors.black.withOpacity(0.3),
                            ],
                          ),
                        ),
                      ),
                      Flexible(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Container(
                                    width: 40,
                                    height: kToolbarHeight - 13,
                                    padding: const EdgeInsets.only(top: 2),
                                    margin: const EdgeInsets.only(
                                        top: 30, left: 20),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: AppColors.secondary.withOpacity(1),
                                      border: Border.all(
                                        color: const Color(0xFFDEE6F3)
                                            .withOpacity(0.7),
                                        width: 5,
                                        strokeAlign:
                                            BorderSide.strokeAlignOutside,
                                      ),
                                    ),
                                    child: const Icon(
                                      Icons.arrow_back_ios_new_rounded,
                                      color: AppColors.hightlight,
                                      size: 18,
                                      weight: 8,
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {},
                                  child: Container(
                                    width: 40,
                                    height: kToolbarHeight - 13,
                                    padding: const EdgeInsets.only(top: 2),
                                    margin: const EdgeInsets.only(
                                        top: 30, right: 20),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: AppColors.secondary.withOpacity(1),
                                      border: Border.all(
                                        color: const Color(0xFFDEE6F3)
                                            .withOpacity(0.7),
                                        width: 5,
                                        strokeAlign:
                                            BorderSide.strokeAlignOutside,
                                      ),
                                    ),
                                    child: const Icon(
                                      Icons.filter_3_outlined,
                                      color: AppColors.hightlight,
                                      size: 18,
                                      weight: 8,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 30, vertical: 20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Flexible(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text(
                                          houseData?.title ?? '',
                                          style: const TextStyle(
                                            color: Colors.white,
                                            fontFamily: 'Poppins-ExtraBold',
                                            fontSize: 30,
                                            fontWeight: FontWeight.w900,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          houseData?.location ?? '',
                                          style: const TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      SizedBox(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                20 /
                                                100,
                                        width: kToolbarHeight,
                                        child: ListView(
                                          scrollDirection: Axis.vertical,
                                          children:
                                              (houseData?.imageUrl ?? []).map(
                                            (url) {
                                              return Container(
                                                margin:
                                                    const EdgeInsets.symmetric(
                                                        vertical: 3),
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                    color: AppColors.textPrgrf
                                                        .withOpacity(0.7),
                                                    width: 5,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                ),
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(7),
                                                  clipBehavior: Clip
                                                      .antiAliasWithSaveLayer,
                                                  child: Image.network(
                                                    url,
                                                    fit: BoxFit.cover,
                                                    scale: 1.0,
                                                    width: double.infinity,
                                                    height:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .height *
                                                            5 /
                                                            100,
                                                  ),
                                                ),
                                              );
                                            },
                                          ).toList(),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Description',
                        style: TextStyle(
                          fontSize: 22,
                          fontFamily: 'Poppins-Bold',
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            child: Row(
                              children: [
                                Container(
                                  height: kToolbarHeight,
                                  width: kToolbarHeight,
                                  decoration: BoxDecoration(
                                    color: AppColors.secondary,
                                    borderRadius: BorderRadius.circular(15),
                                    boxShadow: [
                                      BoxShadow(
                                        color:
                                            AppColors.utility.withOpacity(0.1),
                                        spreadRadius: 1,
                                        blurRadius: 30,
                                        offset: const Offset(0, 2),
                                      ),
                                    ],
                                  ),
                                  child: const Icon(
                                    Icons.king_bed_outlined,
                                    color: AppColors.hightlight,
                                    size: 30,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'BedRoom',
                                      style: TextStyle(
                                          color: AppColors.textPrgrf,
                                          fontSize: 11,
                                          fontFamily: 'Poppins-bold',
                                          fontWeight: FontWeight.w700),
                                    ),
                                    Text(
                                      '${houseData?.bedrooms.toString() ?? '0'} Rooms',
                                      style: const TextStyle(
                                        fontFamily: 'Poppins-bold',
                                        fontWeight: FontWeight.w900,
                                        fontSize: 20,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          SizedBox(
                            child: Row(
                              children: [
                                Container(
                                  height: kToolbarHeight,
                                  width: kToolbarHeight,
                                  decoration: BoxDecoration(
                                    color: AppColors.secondary,
                                    borderRadius: BorderRadius.circular(15),
                                    boxShadow: [
                                      BoxShadow(
                                        color:
                                            AppColors.utility.withOpacity(0.1),
                                        spreadRadius: 1,
                                        blurRadius: 30,
                                        offset: const Offset(0, 2),
                                      ),
                                    ],
                                  ),
                                  child: const Icon(
                                    Icons.bathtub_outlined,
                                    color: AppColors.hightlight,
                                    size: 26,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'BathRoom',
                                      style: TextStyle(
                                          color: AppColors.textPrgrf,
                                          fontSize: 11,
                                          fontFamily: 'Poppins-bold',
                                          fontWeight: FontWeight.w700),
                                    ),
                                    Text(
                                      '${houseData?.bathrooms.toString() ?? '0'} Rooms',
                                      style: const TextStyle(
                                        fontFamily: 'Poppins-bold',
                                        fontWeight: FontWeight.w900,
                                        fontSize: 20,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 20,
                          horizontal: 8,
                        ),
                        child: SizedBox(
                          child: ExpandableText(
                            houseData?.description ?? '',
                            textAlign: TextAlign.justify,
                            style: const TextStyle(
                              fontFamily: 'Poppins-Regular',
                              color: AppColors.textPrgrf,
                            ),
                            expandText: 'Read more',
                            collapseText: 'Read less',
                            maxLines: 3,
                            linkColor: AppColors.hightlight,
                            linkStyle: const TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      _buildMap(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Flexible(
        child: Container(
          height: MediaQuery.of(context).size.height * 10 / 100,
          width: double.infinity,
          color: AppColors.secondary,
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Price',
                      style: TextStyle(
                        color: AppColors.textPrgrf,
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Flexible(
                          child: Column(
                            children: [
                              Text(
                                'IDR.${houseData?.price.toString() ?? '0'}',
                                style: const TextStyle(
                                  fontSize: 25,
                                  fontFamily: 'Poppins-ExtraBold',
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 2,
                        ),
                        const Text(
                          '/Month',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Poppins-SemiBold',
                              fontSize: 13),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  width: MediaQuery.of(context).size.width * 25 / 100,
                  height: MediaQuery.of(context).size.height * 7 / 100,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: AppColors.utility,
                    shape: BoxShape.rectangle,
                  ),
                  child: const Text(
                    'Rent Now',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Poppins-Medium',
                      fontWeight: FontWeight.w500,
                      fontSize: 17,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_exsam/conistans/spaces.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

import '../Data/Data.dart';
import '../components/AppBarshefzComponents.dart';
import '../components/BrandlistComponants.dart';
import '../components/FoodListComponants.dart';
import '../components/Nearby_youlistComponiants.dart';
import '../components/imagesLoopCompontens.dart';
import '../components/searchFieldComponents.dart';
import '../conistans/colors.dart';

class shefzScreens extends StatelessWidget {
  const shefzScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          children: [
            AppBarshefzScreens(),
            kVSpace8,
            searchField(),
            kVSpace16,
            imagesLoop(),
            kVSpace16,
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Try with us",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            kVSpace16,
            BrandList(Imagesbrans: Imagesbrans, brandNames: brandNames),
            kVSpace16,
            foodlist(),
            kVSpace32,
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Chefz Nearby You",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            kVSpace16,
            Nearby_youlist(),
            GridView.builder(
              itemCount: boxfood.length,
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1, childAspectRatio: 1.5),
              itemBuilder: (context, index) {
                return Container(
                  height: 170,
                  width: MediaQuery.of(context).size.width * 0.9,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color.fromARGB(255, 247, 246, 246),
                  ),
                  child: Column(
                    children: [
                      // Padding(
                      //   padding:
                      //       const EdgeInsets.only(right: 8, left: 8, top: 8),
                      //   child: Row(
                      //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //     children: [
                      //       Text(
                      //         "25% off",
                      //         style: TextStyle(
                      //           fontWeight: FontWeight.bold,
                      //           fontSize: 12,
                      //         ),
                      //       ),
                      //       Icon(
                      //         Icons.favorite,
                      //         color: Colors.redAccent,
                      //       ),
                      //     ],
                      //   ),
                      // ),
                      SizedBox(
                        height: 4,
                        width: 4,
                      ),

                      Image(
                        height: 150,
                        width: 360,
                        fit: BoxFit.cover,
                        image: NetworkImage(boxfood[index]),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: NetworkImage(Imagesbrans[index]),
                            ),
                            kHSpace24,
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  brandNames[index],
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                kVSpace8,
                                Row(
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.location_on,
                                          color: Colors.black,
                                        ),
                                        SizedBox(
                                          width: 4,
                                        ),
                                        Text(
                                          Location[index],
                                        )
                                      ],
                                    ),
                                    kHSpace16,
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: Colors.purpleAccent.shade400,
                                        ),
                                        SizedBox(
                                          width: 4,
                                        ),
                                        Text(
                                          Rating[index],
                                        )
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

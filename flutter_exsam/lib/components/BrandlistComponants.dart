import 'package:flutter/material.dart';

import '../conistans/colors.dart';
import '../conistans/spaces.dart';

class BrandList extends StatelessWidget {
  const BrandList({
    super.key,
    required this.Imagesbrans,
    required this.brandNames,
  });

  final List Imagesbrans;
  final List brandNames;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.only(left: 16),
      child: Row(
        children: [
          for (int i = 0; i < 4; i++)
            Container(
              margin: EdgeInsets.only(right: 10),
              // padding: EdgeInsets.only(left: 10),
              width: 100,
              height: 70,
              decoration: BoxDecoration(
                color: kcolorsLogo,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image(
                    height: 50,
                    width: 100,
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      "${Imagesbrans[i]}",
                    ),
                  ),
                  Text(
                    brandNames[i],
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            )
        ],
      ),
    );
  }
}

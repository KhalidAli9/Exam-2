
import 'package:flutter/material.dart';

import '../Data/Data.dart';
import '../conistans/colors.dart';

class foodlist extends StatelessWidget {
  const foodlist({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.only(left: 16),
      child: Row(
        children: [
          for (int i = 0; i < 5; i++)
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 10),
                  // padding: EdgeInsets.only(left: 10),
                  width: 90,
                  height: 50,
                  decoration: BoxDecoration(
                    color: kcolorsLogo,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image(
                    height: 50,
                    width: 90,
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      "${fooditem[i]}",
                    ),
                  ),
                ),
                Text(
                  foodNames[i],
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                  ),
                )
              ],
            ),
        ],
      ),
    );
  }
}

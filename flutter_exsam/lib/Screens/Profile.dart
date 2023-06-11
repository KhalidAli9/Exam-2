import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_exsam/conistans/colors.dart';
import 'package:flutter_exsam/conistans/spaces.dart';

import '../components/SettingItemsCompontints.dart';
import '../components/Wallet_and_PointsComponents.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "My Profile",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: kcolorsLogo,
                  ),
                ),
                Icon(
                  Icons.settings,
                  size: 30,
                  color: Colors.red.shade400,
                )
              ],
            ),
            kVSpace24,
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.red.shade300,
                      ),
                    ),
                    kVSpace4,
                    Row(
                      children: [
                        Text(
                          "Khalid",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        kHSpace8,
                        Icon(
                          Icons.edit_calendar,
                          size: 25,
                          color: kcolorsLogo,
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
            kVSpace32,
            Wallet_and_Points(),
            kVSpace64,
            SettingItems(),
            kVSpace64,
            kVSpace24,
            Text(
              "the Chefz Version 9.46 0",
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey,
              ),
            )
          ],
        ),
      )),
    );
  }
}

import 'package:flutter/material.dart';

import '../conistans/colors.dart';

class AppBarshefzScreens extends StatelessWidget {
  const AppBarshefzScreens({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 60, left: 16, right: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 30,
            width: 110,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: kcolorsLogo,
            ),
            child: Center(
              child: Text(
                "Delivery",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Text(
            "Pickup",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: kcolorsLogo,
            ),
          ),
          Container(
            child: Row(
              children: [
                Image(
                  height: 40,
                  width: 40,
                  image: NetworkImage(
                      "https://img.freepik.com/free-vector/delivery-service-illustrated_23-2148505081.jpg?w=2000"),
                ),
                Column(
                  children: [
                    Text(
                      "Deliver to",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: kcolorsLogo,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "Home",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        Icon(
                          Icons.keyboard_arrow_down_outlined,
                          size: 15,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

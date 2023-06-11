import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_exsam/conistans/colors.dart';
import 'package:flutter_exsam/conistans/spaces.dart';
import 'package:flutter_exsam/extantions/push_andpop.dart';

import 'Order_Past.dart';

class Orders extends StatelessWidget {
  const Orders({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 230, 230, 228),
        title: Center(
          child: new Text(
            "Orders",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: kcolorsLogo,
            ),
          ),
        ),
      ),
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 30,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: kcolorsLogo,
                  ),
                  child: Center(
                    child: Text(
                      "Upcoming",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    context.pushPage(Order_Past());
                  },
                  child: Container(
                    height: 30,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color.fromARGB(255, 223, 222, 219),
                    ),
                    child: Center(
                      child: Text(
                        "Past",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black45,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 200,
          ),
          Center(
            child: Image(
                height: 100,
                width: 100,
                image: NetworkImage(
                    "https://png.pngtree.com/png-vector/20190628/ourlarge/pngtree-empty-box-icon-for-your-project-png-image_1521417.jpg")),
          ),
          Text(
            "There are no upcoming orders",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          kVSpace64,
          kVSpace64,
          kVSpace64,
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Container(
                  height: 40,
                  width: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromARGB(255, 37, 178, 42)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text(
                          "CONTACT US",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        kHSpace8,
                        Icon(
                          Icons.contact_phone_outlined,
                          size: 25,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}

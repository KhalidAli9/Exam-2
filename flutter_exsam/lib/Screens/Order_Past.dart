import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_exsam/Screens/Order.dart';
import 'package:flutter_exsam/conistans/colors.dart';
import 'package:flutter_exsam/conistans/spaces.dart';
import 'package:flutter_exsam/extantions/push_andpop.dart';

class Order_Past extends StatelessWidget {
  const Order_Past({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 230, 230, 228),
        title: new Text(
          "Orders",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: kcolorsLogo,
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
                InkWell(
                  onTap: () {
                    context.pushPage(Orders());
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
                        "Upcoming",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black45,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 30,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: kcolorsLogo,
                  ),
                  child: Center(
                    child: Text(
                      "Past",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
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
            "There are no Past Orders",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ],
      )),
    );
  }
}

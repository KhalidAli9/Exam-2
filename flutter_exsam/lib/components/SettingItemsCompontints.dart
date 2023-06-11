import 'package:flutter/material.dart';

import '../conistans/spaces.dart';

class SettingItems extends StatelessWidget {
  SettingItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 50,
          width: MediaQuery.of(context).size.width * 0.95,
          decoration: BoxDecoration(),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.payment_outlined,
                        size: 25,
                        color: Colors.grey,
                      ),
                      kHSpace16,
                      Text(
                        "Payment Cards",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  Icon(
                    Icons.chevron_right_outlined,
                    size: 25,
                    color: Colors.grey,
                  )
                ],
              ),
              kVSpace8,
              Divider(
                height: 8,
                color: Colors.grey,
              )
            ],
          ),
        ),
        kVSpace16,
        Container(
          height: 50,
          width: MediaQuery.of(context).size.width * 0.95,
          decoration: BoxDecoration(),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.favorite_border,
                        size: 25,
                        color: Colors.grey,
                      ),
                      kHSpace16,
                      Text(
                        "My Favourite",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  Icon(
                    Icons.chevron_right_outlined,
                    size: 25,
                    color: Colors.grey,
                  )
                ],
              ),
              kVSpace8,
              Divider(
                height: 8,
                color: Colors.grey,
              )
            ],
          ),
        ),
        kVSpace16,
        Container(
          height: 50,
          width: MediaQuery.of(context).size.width * 0.95,
          decoration: BoxDecoration(),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.contact_phone_outlined,
                        size: 25,
                        color: Colors.grey,
                      ),
                      kHSpace16,
                      Text(
                        "Contact us",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  Icon(
                    Icons.chevron_right_outlined,
                    size: 25,
                    color: Colors.grey,
                  )
                ],
              ),
              kVSpace8,
              Divider(
                height: 8,
                color: Colors.grey,
              )
            ],
          ),
        ),
        kVSpace16,
        Container(
          height: 50,
          width: MediaQuery.of(context).size.width * 0.95,
          decoration: BoxDecoration(),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.share_outlined,
                        size: 25,
                        color: Colors.grey,
                      ),
                      kHSpace16,
                      Text(
                        "Share App",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  Icon(
                    Icons.chevron_right_outlined,
                    size: 25,
                    color: Colors.grey,
                  )
                ],
              ),
              kVSpace8,
              Divider(
                height: 8,
                color: Colors.grey,
              )
            ],
          ),
        ),
        kVSpace16,
        Container(
          height: 50,
          width: MediaQuery.of(context).size.width * 0.95,
          decoration: BoxDecoration(),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.help_outline_rounded,
                        size: 25,
                        color: Colors.grey,
                      ),
                      kHSpace16,
                      Text(
                        "FAQ",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  Icon(
                    Icons.chevron_right_outlined,
                    size: 25,
                    color: Colors.grey,
                  )
                ],
              ),
              kVSpace8,
              Divider(
                height: 8,
                color: Colors.grey,
              )
            ],
          ),
        ),
        kVSpace16,
      ],
    );
  }
}

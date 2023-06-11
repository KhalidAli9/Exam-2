
import 'package:flutter/material.dart';

import '../conistans/colors.dart';

class searchField extends StatelessWidget {
  const searchField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      child: TextField(
        cursorColor: Colors.grey,
        decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(
                  width: 1, color: Color.fromARGB(255, 243, 237, 237))),
          hintText: 'Search for Dishes , Resaurants and Reservation',
          hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
          prefixIcon: Icon(
            Icons.search,
            size: 20,
            color: kcolorsLogo,
          ),
        ),
      ),
    );
  }
}

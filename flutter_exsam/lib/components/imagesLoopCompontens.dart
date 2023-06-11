import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

import '../conistans/colors.dart';

class imagesLoop extends StatelessWidget {
  const imagesLoop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: MediaQuery.of(context).size.width * 0.9,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.black,
      ),
      child: ImageSlideshow(
        indicatorColor: Colors.redAccent,
        indicatorBackgroundColor: Colors.white,
        height: 300,
        autoPlayInterval: 3000,
        indicatorRadius: 4,
        isLoop: true,
        children: [
          Image(
            fit: BoxFit.cover,
            image: NetworkImage(
                "https://media.istockphoto.com/id/1054228718/photo/indian-sweets-in-a-plate-includes-gulab-jamun-rasgulla-kaju-katli-morichoor-bundi-laddu.jpg?s=612x612&w=0&k=20&c=hYWCXLaldKvhxdBa83M0RnUij7BCmhf-ywWdvyIXR40="),
          ),
          Image(
            fit: BoxFit.cover,
            image: NetworkImage(
                "https://hips.hearstapps.com/hmg-prod/images/ingredients-for-spring-vegetable-buddha-bowl-royalty-free-image-656873420-1558126238.jpg?crop=1.00xw:0.718xh;0,0.141xh&resize=1200:*"),
          ),
          Image(
            fit: BoxFit.cover,
            image: NetworkImage(
                "https://madensverden.dk/wp-content/uploads/2021/06/burger-opskrifter.jpg"),
          ),
        ],
      ),
    );
  }
}

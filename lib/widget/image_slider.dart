import 'package:carousel_pro/carousel_pro.dart';
import 'package:country_list_pick/country_list_pick.dart';
import 'package:flutter/material.dart';

import '../constant/colors.dart';

class ImageSlider extends StatelessWidget {
  const ImageSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      SizedBox(
        height: 350.0,
        width: double.infinity,
        child: Carousel(
          dotSize: 4.0,
          dotSpacing: 10.0,
          dotColor: Colors.grey,
          dotBgColor: Colors.transparent,
          dotPosition: DotPosition.bottomLeft,
          dotVerticalPadding: 30,
          images: [
            Image.asset("img/welcome_one.jpg",fit: BoxFit.cover,),
            Image.asset("img/welcome_two.jpg",fit: BoxFit.cover,),
            Image.asset("img/welcome_three.jpg",fit: BoxFit.cover,),
            Image.asset("img/welcome_four.jpg",fit: BoxFit.cover,),
          ],
        ),
      );
  }
}

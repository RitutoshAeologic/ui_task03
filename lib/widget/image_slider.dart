import 'package:carousel_pro/carousel_pro.dart';
import 'package:country_list_pick/country_list_pick.dart';
import 'package:flutter/material.dart';

import '../utils/colors.dart';

class ImageSlider extends StatelessWidget {
  const ImageSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      ListView(
        children: [
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
          ),
          Padding(
              padding: EdgeInsets.only(left: 20,right: 20,top: 10,bottom: 10),
              child: Text("Let's gets started! Enter Your Mobile Number",
                style: TextStyle(
                  fontSize: 12,
                ),
              )),

          Stack(
            children: [
              Container(
                margin: EdgeInsets.only(left: 20,right: 20,top: 20,bottom: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  border: Border.all(
                      color: AppColors.black ),
                  // bottom: BorderSide(color: Colors.grey),
                ),
                child: TextField(

                  keyboardType: TextInputType.phone,
                  decoration:
                  InputDecoration(
                      prefixIcon: Padding(
                        padding: EdgeInsets.all(0),
                        child: CountryListPick(
                          theme: CountryTheme(
                            isShowCode: true,
                            isDownIcon: true,
                            isShowFlag: false,
                            isShowTitle: false,
                          ),
                          initialSelection: "+91",
                        ),
                      ),
                      hintText: "Enter Number",
                      prefixIconColor: AppColors.black
                  ),
                ),

              )
            ],
          ),
          Padding(
              padding: EdgeInsets.only(left: 20,right: 20,top: 10,bottom: 10),
              child: Text("Trouble signing in?",textAlign: TextAlign.left,
                style: TextStyle(
                    fontSize: 12,
                    decoration: TextDecoration.underline

                ),
              )),
        ],
      ),
    );
  }
}

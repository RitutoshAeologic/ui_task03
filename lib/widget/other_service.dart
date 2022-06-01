import 'package:flutter/material.dart';

import '../constant/colors.dart';



class ServiceWidget extends StatelessWidget {
   ServiceWidget({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return   Container(
      height: 110,
      width: 100,
      margin: const EdgeInsets.only(top: 10, left: 20),
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
          image: DecorationImage(
              image: AssetImage("img/doctorbg.jpg"),

              fit: BoxFit.fill
          )
      ),
      child:  Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          Positioned(
              bottom: 0,
              top: 80,
              left: 0,
              right: 0,
              child:
              Container(
                //width: 149,
                decoration: const BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(14),
                    bottomRight: Radius.circular(14),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 8,horizontal: 10),
                      child: Text( title,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 10
                        ),),
                    ),


                  ],
                ),
              ))
        ],
      ),
    );
  }
}

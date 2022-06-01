import 'package:flutter/material.dart';

import '../constant/colors.dart';
class SpecialityWidget extends StatelessWidget {
  const SpecialityWidget({
    Key? key,
    required this.specialityTitle
  }
      ) :
        super(key: key);
  final String specialityTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(4),
      padding: EdgeInsets.symmetric(vertical: 20,horizontal: 8),
      color: AppColors.specialityBG,
      child: Row(
        children: [
          CircleAvatar(
              radius: 22,
              child: Image.asset("img/person.png",scale: 1.1,)
          ),
          SizedBox(width: 10,),
          Text(specialityTitle,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15
            ),),
        ],
      ),
    );
  }
}

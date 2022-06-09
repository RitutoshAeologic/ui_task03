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
      padding: EdgeInsets.symmetric(vertical: 10,horizontal: 8),
      color: AppColors.specialityBG,
      child: Row(
        children: [
        Wrap(
          direction: Axis.vertical ,
          spacing: 10.0,
          alignment: WrapAlignment.spaceEvenly,
          children: [
            CircleAvatar(
                radius: 21,
                child: Image.asset("img/person.png",scale: 0.1,)
            ),
            SizedBox(width: 9,),
            Text(specialityTitle,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 11
              ),),
          ],
        )
        ],
      ),
    );
  }
}

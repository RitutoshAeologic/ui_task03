import 'package:flutter/material.dart';

class HealthConcernWidget extends StatelessWidget {
  const HealthConcernWidget({Key? key, required this.concernTitle}) : super(key: key);
  final String concernTitle;

  @override
  Widget build(BuildContext context) {
    return   Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(top: 20,),
          child: Column(
            children: [
              CircleAvatar(
                  radius: 24,
                  child: Image.asset("img/person.png",scale: 1.1,)
              ),
              SizedBox(height: 5,),
              Text(concernTitle)
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 20),
          child: Column(
            children: [
              CircleAvatar(
                  radius: 24,
                  child: Image.asset("img/person.png",scale: 1.1,)
              ),
              SizedBox(height: 5,),
              Text(concernTitle)
            ],
          ),
        ),
      ],
    );
  }
}

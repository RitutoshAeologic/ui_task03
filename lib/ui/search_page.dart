import 'package:flutter/material.dart';
import 'package:untitled1/widget/health_concern.dart';
import 'package:untitled1/widget/speciality_category.dart';

import '../router.dart';
import '../constant/colors.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.searchBG,
      appBar: AppBar(
        leading: IconButton(onPressed: () => Navigator.pushNamed(context,
          Routes.homeScreen,), icon: Icon(Icons.arrow_back),),
        backgroundColor: AppColors.appBarColor,
        title:Row(
          children: [
            const Text("Find & Book"),
            const SizedBox(width: 115,),
            Column(
              children: [
                const Text("LOCATION",style: TextStyle(
                  fontSize: 10,
                ),),
              Row(
                children: const [
                  Text("Bangalore",
                    style: TextStyle(
                      fontSize: 12,
                    ),),
                  Icon(Icons.arrow_drop_down, color: AppColors.grey,),
                ],
              )
              ],
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 15,horizontal: 15),
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: AppColors.white
              ),
              child: const TextField( textAlign: TextAlign.start,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    icon: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Icon(
                        Icons.search,color: Colors.grey,size:35,
                      ),
                    ),
                    hintText: "Search doctors, specialities, clinics,hospitals",
                    hintStyle: TextStyle(color: Colors.grey,fontSize: 12),

                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 10,left: 20,right: 20,bottom: 10),
              margin: const EdgeInsets.only(top: 20),
              color: AppColors.white,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Search by Health concern",
                        style: TextStyle(
                          color: AppColors.greyShadeText,
                          fontSize: 15,
                          fontWeight: FontWeight.bold
                        ),),
                        const Text("Explore more",
                          style: TextStyle(
                            color: AppColors.blue,
                            fontSize: 15,
                            fontWeight: FontWeight.bold
                          ),),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Expanded(
                          child:
                         HealthConcernWidget(concernTitle: "Health Concern"),
                        ),
                        Expanded(
                          child:
                          HealthConcernWidget(concernTitle: "Health Concern"),
                        ),
                        Expanded(
                          child:
                          HealthConcernWidget(concernTitle: "Health Concern"),
                        ),
                        // Container(
                        //   margin: EdgeInsets.only(top: 20),
                        //   child: Column(
                        //     children: [
                        //       CircleAvatar(
                        //           radius: 24,
                        //           child: Image.asset("img/person.png",scale: 1.1,)
                        //       ),
                        //       SizedBox(height: 5,),
                        //       Text("Piles surgery")
                        //     ],
                        //   ),
                        // ),
                        // Container(
                        //   margin: EdgeInsets.only(top: 20,),
                        //   child: Column(
                        //     children: [
                        //       CircleAvatar(
                        //           radius: 24,
                        //           child: Image.asset("img/person.png",scale: 1.1,)
                        //       ),
                        //       SizedBox(height: 5,),
                        //       Text("Piles surgery")
                        //     ],
                        //   ),
                        // ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Divider(
                      color: AppColors.grey,
                    ),
                    SizedBox(height: 10,),
                    Text("Search by speciality",
                      style: TextStyle(
                        color: AppColors.greyShadeText,
                        fontSize: 15,
                        fontWeight: FontWeight.bold
                      ),),
                    SizedBox(height: 10,),
                    // GridView.count(crossAxisCount: 2,
                    // children: List.generate(10, (index)
                    // {
                    //
                    //   return Container(
                    //     height: 50,
                    //     width: 50,
                    //     color: Colors.grey,
                    //
                    //   );
                    // })
                    // )
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                   SpecialityWidget(specialityTitle: "Specialization"),
                    SpecialityWidget(specialityTitle: "Specialization"),
                  ],
                ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        SpecialityWidget(specialityTitle: "Specialization"),
                        SpecialityWidget(specialityTitle: "Specialization"),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        SpecialityWidget(specialityTitle: "Specialization"),
                        SpecialityWidget(specialityTitle: "Specialization"),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        SpecialityWidget(specialityTitle: "Specialization"),
                        SpecialityWidget(specialityTitle: "Specialization"),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        SpecialityWidget(specialityTitle: "Specialization"),
                        SpecialityWidget(specialityTitle: "Specialization"),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

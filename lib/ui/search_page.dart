import 'package:flutter/material.dart';

import '../router.dart';
import '../utils/colors.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        leading: IconButton(onPressed: () => Navigator.pushNamed(context,
          Routes.homeScreen,), icon: Icon(Icons.arrow_back),),
        backgroundColor: AppColors.appBarColor,
        title:Row(
          children: [
            Text("Find & Book"),
            SizedBox(width: 115,),
            Column(
              children: [
                Text("LOCATION",style: TextStyle(
                  fontSize: 10,
                ),),
              Row(
                children: [
                  Text("Bangalore",
                    style: TextStyle(
                      fontSize: 12,
                    ),),
                  Icon(Icons.arrow_drop_down, color: Colors.grey,),
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
                  color: Colors.white
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
              padding: EdgeInsets.only(top: 10,left: 20,right: 20,bottom: 10),
              margin: EdgeInsets.only(top: 20),
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
                          color: Colors.grey.shade600,
                          fontSize: 15,
                          fontWeight: FontWeight.bold
                        ),),
                        Text("Explore more",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 15,
                            fontWeight: FontWeight.bold
                          ),),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Column(
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
                                    Text("Health Concern")
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
                                    Text("Health Concern")
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
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
                                    Text("Health Concern")
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
                                    Text("Health Concern")
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
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
                                    Text("Health Concern")
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
                                    Text("Health Concern")
                                  ],
                                ),
                              ),
                            ],
                          ),
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
                      color: Colors.grey,
                    ),
                    SizedBox(height: 10,),
                    Text("Search by speciality",
                      style: TextStyle(
                        color: Colors.grey.shade600,
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
                  children: [
                    Container(
                      margin: EdgeInsets.all(4),
                      padding: EdgeInsets.symmetric(vertical: 20,horizontal: 8),
                      color: Colors.grey.shade200,
                      child: Row(
                        children: [
                          CircleAvatar(
                              radius: 22,
                              child: Image.asset("img/person.png",scale: 1.1,)
                          ),
                          SizedBox(width: 10,),
                          Text("Specialization",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15
                          ),),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(4),
                      padding: EdgeInsets.symmetric(vertical: 20,horizontal: 8),
                      color: Colors.grey.shade200,
                      child: Row(
                        children: [
                          CircleAvatar(
                              radius: 22,
                              child: Image.asset("img/person.png",scale: 1.1,)
                          ),
                          SizedBox(width: 10,),
                          Text("Specialization",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15
                            ),),
                        ],
                      ),
                    ),
                  ],
                ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.all(4),
                          padding: EdgeInsets.symmetric(vertical: 20,horizontal: 8),
                          color: Colors.grey.shade200,
                          child: Row(
                            children: [
                              CircleAvatar(
                                  radius: 22,
                                  child: Image.asset("img/person.png",scale: 1.1,)
                              ),
                              SizedBox(width: 10,),
                              Text("Specialization",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15
                                ),),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(4),
                          padding: EdgeInsets.symmetric(vertical: 20,horizontal: 8),
                          color: Colors.grey.shade200,
                          child: Row(
                            children: [
                              CircleAvatar(
                                  radius: 22,
                                  child: Image.asset("img/person.png",scale: 1.1,)
                              ),
                              SizedBox(width: 10,),
                              Text("Specialization",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15
                                ),),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.all(4),
                          padding: EdgeInsets.symmetric(vertical: 20,horizontal: 8),
                          color: Colors.grey.shade200,
                          child: Row(
                            children: [
                              CircleAvatar(
                                  radius: 22,
                                  child: Image.asset("img/person.png",scale: 1.1,)
                              ),
                              SizedBox(width: 10,),
                              Text("Specialization",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15
                                ),),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(4),
                          padding: EdgeInsets.symmetric(vertical: 20,horizontal: 8),
                          color: Colors.grey.shade200,
                          child: Row(
                            children: [
                              CircleAvatar(
                                  radius: 22,
                                  child: Image.asset("img/person.png",scale: 1.1,)
                              ),
                              SizedBox(width: 10,),
                              Text("Specialization",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15
                                ),),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.all(4),
                          padding: EdgeInsets.symmetric(vertical: 20,horizontal: 8),
                          color: Colors.grey.shade200,
                          child: Row(
                            children: [
                              CircleAvatar(
                                  radius: 22,
                                  child: Image.asset("img/person.png",scale: 1.1,)
                              ),
                              SizedBox(width: 10,),
                              Text("Specialization",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15
                                ),),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(4),
                          padding: EdgeInsets.symmetric(vertical: 20,horizontal: 8),
                          color: Colors.grey.shade200,
                          child: Row(
                            children: [
                              CircleAvatar(
                                  radius: 22,
                                  child: Image.asset("img/person.png",scale: 1.1,)
                              ),
                              SizedBox(width: 10,),
                              Text("Specialization",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15
                                ),),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(

                          margin: EdgeInsets.all(4),
                          padding: EdgeInsets.symmetric(vertical: 20,horizontal: 8),
                          color: Colors.grey.shade200,
                          child: Row(
                            children: [
                              CircleAvatar(
                                  radius: 22,
                                  child: Image.asset("img/person.png",scale: 1.1,)
                              ),
                              SizedBox(width: 10,),
                              Text("Specialization",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15
                                ),),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(4),
                          padding: EdgeInsets.symmetric(vertical: 20,horizontal: 8),
                          color: Colors.grey.shade200,
                          child: Row(
                            children: [
                              CircleAvatar(
                                  radius: 22,
                                  child: Image.asset("img/person.png",scale: 1.1,)
                              ),
                              SizedBox(width: 10,),
                              Text("Specialization",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15
                                ),),
                            ],
                          ),
                        ),
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

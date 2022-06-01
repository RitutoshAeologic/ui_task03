import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../router.dart';
import '../utils/colors.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: AppColors.appBarColor,
            title: Text("RAHUL THAKUR"),
            bottom: TabBar(
              tabs: [
                Tab(text:"Personal" ),
                Tab(text:"Medical"),
                Tab(text:"Lifestyle" ),
              ],
            ),
            leading: IconButton(onPressed: () => Navigator.pushNamed(context,
              Routes.registrationScreen,), icon: Icon(Icons.arrow_back),

            ),
          ),
          body:
          TabBarView(
            children: [
              ListView(
                scrollDirection: Axis.vertical,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20,top: 10,),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Name",style: TextStyle(color: Colors.grey, fontSize: 12),),
                            SizedBox(height: 5,),
                            Text("Rahul Thakur",style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,
                                fontSize: 15),),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(20),
                        child: CircleAvatar(
                            radius: 24,
                            child: Image.asset("img/person.png",scale: 1.1,)
                        ),
                      ),
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border(
                          top: BorderSide(color: Colors.grey),
                          // bottom: BorderSide(color: Colors.grey),
                        )
                    ),
                    child: TextField(
                        textAlign: TextAlign.right,
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          prefixIcon: Padding(
                            padding: EdgeInsets.only(top: 10,left: 5),
                            child: Text("Contact Number"),
                          ),
                          hintText: "+91-7903138285",
                          hintStyle: TextStyle(color: AppColors.black,fontWeight: FontWeight.bold),
                        )
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border(
                          top: BorderSide(color: Colors.grey),
                          // bottom: BorderSide(color: Colors.grey),
                        )
                    ),
                    child: TextField(
                        textAlign: TextAlign.right,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          prefixIcon: Padding(
                            padding: EdgeInsets.only(top: 10,left: 5),
                            child: Text("Email Id"),
                          ),
                          hintText: "test@gmail.com",
                          hintStyle: TextStyle(color: AppColors.black,fontWeight: FontWeight.bold),
                        )
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border(
                          top: BorderSide(color: Colors.grey),
                          //  bottom: BorderSide(color: Colors.grey),
                        )
                    ),
                    child: TextField(
                        textAlign: TextAlign.right,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          prefixIcon: Padding(
                            padding: EdgeInsets.only(top: 10,left: 5),
                            child: Text("Gender"),
                          ),
                          hintText: "Male",
                          hintStyle: TextStyle(color: AppColors.black,fontWeight: FontWeight.bold),
                        )
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border(
                          top: BorderSide(color: Colors.grey),
                          //    bottom: BorderSide(color: Colors.grey),
                        )
                    ),
                    child: TextField(
                        textAlign: TextAlign.right,

                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            prefixIcon: Padding(
                              padding: EdgeInsets.only(top: 10,left: 5),
                              child: Text("DOB"),
                            ),
                            hintText: "yyyy mm dd",

                            hintStyle: TextStyle(color: Colors.grey),
                            hintTextDirection: TextDirection.ltr
                        )
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border(
                          top: BorderSide(color: Colors.grey),
                          //  bottom: BorderSide(color: Colors.grey),
                        )
                    ),
                    child: TextField(
                        textAlign: TextAlign.right,
                        decoration: InputDecoration(
                          prefixIcon: Padding(
                            padding: EdgeInsets.only(top: 10,left: 5),
                            child: Text("Blood Group"),
                          ),
                          hintText: "A+",
                          hintStyle: TextStyle(color: AppColors.black,fontWeight: FontWeight.bold),
                        )
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border(
                          top: BorderSide(color: Colors.grey),
                          // bottom: BorderSide(color: Colors.grey),
                        )
                    ),
                    child: TextField(
                        textAlign: TextAlign.right,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          prefixIcon: Padding(
                            padding: EdgeInsets.only(top: 10,left: 5),
                            child: Text("Marital status"),
                          ),
                          hintText: "Single",
                          hintStyle: TextStyle(color: AppColors.black,fontWeight: FontWeight.bold),
                        )
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border(
                          top: BorderSide(color: Colors.grey),
                          // bottom: BorderSide(color: Colors.grey),
                        )
                    ),
                    child: TextField(
                        textAlign: TextAlign.right,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          prefixIcon: Padding(
                            padding: EdgeInsets.only(top: 10,left: 5),
                            child: Text("Height" ),
                          ),
                          hintText: "5 ft 9 in",
                          hintStyle: TextStyle(color: AppColors.black,fontWeight: FontWeight.bold),
                        )
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border(
                          top: BorderSide(color: Colors.grey),
                          // bottom: BorderSide(color: Colors.grey),
                        )
                    ),
                    child: TextField(
                        textAlign: TextAlign.right,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          prefixIcon: Padding(
                            padding: EdgeInsets.only(top: 10,left: 5),
                            child: Text("Weight"),
                          ),
                          hintText: "61 Kgs",
                          hintStyle: TextStyle(color: AppColors.black,fontWeight: FontWeight.bold),
                        )
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border(
                          top: BorderSide(color: Colors.grey),
                          //    bottom: BorderSide(color: Colors.grey),
                        )
                    ),
                    child: TextField(
                        textAlign: TextAlign.right,
                        maxLines: 2,
                        // keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          prefixIcon: Padding(
                            padding: EdgeInsets.only(top: 10,left: 5),
                            child: Text("Emergency Contact"),
                          ),
                          hintText: "Brother \n +91-9808235635",
                          hintStyle: TextStyle(color: AppColors.black,fontWeight: FontWeight.bold),
                        )
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border(
                          top: BorderSide(color: Colors.grey),
                          //bottom: BorderSide(color: Colors.grey),
                        )
                    ),
                    child: TextField(
                        textAlign: TextAlign.right,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          prefixIcon: Padding(
                            padding: EdgeInsets.only(top: 10,left: 5),
                            child: Text("Location"),
                          ),
                          hintText: "Noida",
                          hintStyle: TextStyle(color: AppColors.black,fontWeight: FontWeight.bold),
                        )
                    ),
                  ),
                  SizedBox(height: 90,),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child:MaterialButton(
                      color: Colors.blue,
                      onPressed: () => Navigator.pushNamed(context,
                        Routes.homeScreen,),
                      padding: EdgeInsets.only(left:20,right: 20),
                      height: 50,
                      minWidth: double.infinity,
                      //shape: RoundedRectangleBorder(
                      //   borderRadius: BorderRadius.circular(40)),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children:  <Widget>[
                          Text("Complete Profile",
                            style: const  TextStyle(
                              color: AppColors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              //height: 1.5,
                              //wordSpacing: 1.5,
                            ),),
                          SizedBox(height: 5,),
                          Text("45% completed",
                            style: const  TextStyle(
                              color: AppColors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              //height: 1.5,
                              //wordSpacing: 1.5,
                            ),),
                        ],
                      ),
                    ) ,
                  )
                ],
              ),
              //Center(child: Tab(text:"Personal" ),),

              ListView(
                scrollDirection: Axis.vertical,
                children: [

                  Container(
                    decoration: BoxDecoration(
                        border: Border(
                          top: BorderSide(color: Colors.grey),
                          // bottom: BorderSide(color: Colors.grey),
                        )
                    ),
                    child: TextField(
                        textAlign: TextAlign.right,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          prefixIcon: Padding(
                            padding: EdgeInsets.only(top: 10,left: 5),
                            child: Text("Allergies"),
                          ),
                          hintText: "NO",
                          hintStyle: TextStyle(color: AppColors.black,fontWeight: FontWeight.bold),
                        )
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border(
                          top: BorderSide(color: Colors.grey),
                          //    bottom: BorderSide(color: Colors.grey),
                        )
                    ),
                    child: TextField(
                        textAlign: TextAlign.right,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          prefixIcon: Padding(
                            padding: EdgeInsets.only(top: 10,left: 5),
                            child: Text("Past Medications"),
                          ),
                          hintText: "add medications",
                          hintStyle: TextStyle(color: Colors.grey),
                        )
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border(
                          top: BorderSide(color: Colors.grey),
                          //    bottom: BorderSide(color: Colors.grey),
                        )
                    ),
                    child: TextField(
                        textAlign: TextAlign.right,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          prefixIcon: Padding(
                            padding: EdgeInsets.only(top: 10,left: 5),
                            child: Text("Chromic Disease"),
                          ),
                          hintText: "add disease",
                          hintStyle: TextStyle(color: Colors.grey),
                        )
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border(
                          top: BorderSide(color: Colors.grey),
                          //    bottom: BorderSide(color: Colors.grey),
                        )
                    ),
                    child: TextField(
                        textAlign: TextAlign.right,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          prefixIcon: Padding(
                            padding: EdgeInsets.only(top: 10,left: 5),
                            child: Text("Injuries"),
                          ),
                          hintText: "add incident",
                          hintStyle: TextStyle(color: Colors.grey),
                        )
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border(
                          top: BorderSide(color: Colors.grey),
                          //    bottom: BorderSide(color: Colors.grey),
                        )
                    ),
                    child: TextField(
                        textAlign: TextAlign.right,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          prefixIcon: Padding(
                            padding: EdgeInsets.only(top: 10,left: 5),
                            child: Text("Surgeries"),
                          ),
                          hintText: "add surgeries",
                          hintStyle: TextStyle(color: Colors.grey),
                        )
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 370),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child:MaterialButton(
                        color: Colors.blue,
                        onPressed: () => Navigator.pushNamed(context,
                          Routes.homeScreen,),
                        height: 50,
                        minWidth: double.infinity,
                        //shape: RoundedRectangleBorder(
                        //   borderRadius: BorderRadius.circular(40)),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children:  <Widget>[
                            Text("Complete Profile",
                              style: const  TextStyle(
                                color: AppColors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                //height: 1.5,
                                //wordSpacing: 1.5,
                              ),),
                            SizedBox(height: 5,),
                            Text("45% completed",
                              style: const  TextStyle(
                                color: AppColors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                                //height: 1.5,
                                //wordSpacing: 1.5,
                              ),),
                          ],
                        ),
                      ) ,
                    ),
                  )

                ],
              ),
              Center(
                child: Text('The Page does not exists.'),
              ),
            ],
          ),
          // bottomSheet: Align(
          //   alignment: Alignment.bottomCenter,
          //   child:MaterialButton(
          //     color: Colors.blue,
          //     onPressed: (){},
          //     padding: EdgeInsets.only(left:20,right: 20),
          //     height: 50,
          //     minWidth: double.infinity,
          //     //shape: RoundedRectangleBorder(
          //     //   borderRadius: BorderRadius.circular(40)),
          //     child: Column(
          //       mainAxisSize: MainAxisSize.min,
          //       crossAxisAlignment: CrossAxisAlignment.center,
          //       children:  <Widget>[
          //         Text("Complete Profile",
          //           style: const  TextStyle(
          //             color: AppColors.white,
          //             fontWeight: FontWeight.bold,
          //             fontSize: 20,
          //             //height: 1.5,
          //             //wordSpacing: 1.5,
          //           ),),
          //         SizedBox(height: 5,),
          //         Text("45% completed",
          //           style: const  TextStyle(
          //             color: AppColors.white,
          //             fontWeight: FontWeight.bold,
          //             fontSize: 12,
          //             //height: 1.5,
          //             //wordSpacing: 1.5,
          //           ),),
          //       ],
          //     ),
          //   ) ,
          // ),


        ));
  }
}

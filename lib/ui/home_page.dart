import 'package:flutter/material.dart';
import 'package:untitled1/utils/colors.dart';

import '../router.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child:
           Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Padding(
                 padding: const EdgeInsets.only(top: 25.0,left: 20,right: 20),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.start,
                   children: [
                     GestureDetector(
                         onTap: () => Navigator.pushNamed(context,
                           Routes.noInternetScreen,),
                         child: Icon(Icons.menu,color: Colors.black,),
                     ),
                     //SizedBox(width: 190,),
                     Container(
                       margin: EdgeInsets.only(left: 180),
          height: 25,
          //width: 120,
          padding: EdgeInsets.only(right: 10,left: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            color: Colors.pink.shade100,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () => Navigator.pushNamed(context,
                  Routes.noInternetScreen,),
                child: Container(
                  child:
                     Center(
                       child: Text("Explore",
                        style: TextStyle(fontSize: 12,color: Colors.black),
                    ),
                     ),

                  ),
              ),
              SizedBox(width: 5,),
              GestureDetector(
                onTap: () => Navigator.pushNamed(context,
                  Routes.noInternetScreen,),
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 5),
                  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    color: Colors.pink.shade900,
                  ),
                  child:Center(
                    child: Text("PLUS",
                        style: TextStyle(fontSize: 12,color: Colors.white),
                      ),
                  ),

                  ),
              ),

            ],
          ),
        ),
                     SizedBox(width: 10,),
                     Icon(Icons.wallet)
                   ],
                 ),
               ),
               Padding(padding: EdgeInsets.only(left: 20,right: 20,top: 30,bottom: 10),
               child: Row(
                 children: [
                   Icon(Icons.location_on),
                   Text("Bangalore",
                     style: TextStyle(
                       fontSize: 15,
                     ),),
                   GestureDetector(
                       onTap: () => Navigator.pushNamed(context,
                         Routes.searchScreen,),
                       child: Icon(Icons.arrow_drop_down, color: Colors.grey,)),
                 ],
               ),
               ),
               Divider(
                 color: Colors.grey,
               ),
               Container(
                 margin: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                 child: Image.asset("img/homeposter.jpg"),
               ),
               Padding(
                 padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                 child: Text("Our Offerings",
                   style: TextStyle(
                   fontSize: 20,
                     fontWeight: FontWeight.bold
                 ),),
               ),
               Row(
                 children: [
                   Container(
                     height: 180,
                     width: 150,
                     margin: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                     decoration: BoxDecoration(
                         borderRadius: const BorderRadius.all(
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
                             top: 124,
                             left: 0,
                             right: 0,
                             child: Container(
                               //width: 149,
                               decoration: BoxDecoration(
                                 color: Colors.white,
                                 borderRadius: const BorderRadius.only(
                                   //topRight: Radius.circular(69),
                                   bottomLeft: Radius.circular(14),
                                   bottomRight: Radius.circular(14),
                                   // topLeft: Radius.circular(27)
                                 ),
                               ),
                               child: Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   Padding(
                                     padding: const EdgeInsets.symmetric(vertical: 4,horizontal: 10),
                                     child: Text("Find Doctors Near \n"
                                         "You",
                                       style: TextStyle(
                                           fontWeight: FontWeight.bold,
                                           fontSize: 11
                                       ),),
                                   ),
                                   Padding(
                                     padding: const EdgeInsets.symmetric(horizontal: 9),
                                     child: Text("Confirmed appointments",
                                       style: TextStyle(color: Colors.grey,
                                           fontSize: 7
                                       ),),
                                   ),

                                 ],
                               ),
                             ))
                       ],
                     ),
                   ),
                   Container(
                     height: 180,
                     width: 150,
                     margin: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                     decoration: BoxDecoration(
                         borderRadius: const BorderRadius.all(
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
                             top: 124,
                             left: 0,
                             right: 0,
                             child: Container(
                               //width: 149,
                               decoration: BoxDecoration(
                                 color: Colors.white,
                                 borderRadius: const BorderRadius.only(
                                   //topRight: Radius.circular(69),
                                   bottomLeft: Radius.circular(14),
                                   bottomRight: Radius.circular(14),
                                   // topLeft: Radius.circular(27)
                                 ),
                               ),
                               child: Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   Padding(
                                     padding: const EdgeInsets.symmetric(vertical: 4,horizontal: 10),
                                     child: Text("Instant Video \n"
                                         "Consultation",
                                       style: TextStyle(
                                           fontWeight: FontWeight.bold,
                                           fontSize: 11
                                       ),),
                                   ),
                                   Padding(
                                     padding: const EdgeInsets.symmetric(horizontal: 9),
                                     child: Text("Connect within 60 secs",
                                       style: TextStyle(color: Colors.grey,
                                           fontSize: 7
                                       ),),
                                   ),

                                 ],
                               ),
                             )),
                         Positioned(
                           top: 10,
                           left: 10,
                           child: Container(
                             padding: EdgeInsets.symmetric(vertical: 5,horizontal: 5),
                             decoration: BoxDecoration(
                                 borderRadius: const BorderRadius.all(
                                   Radius.circular(3),
                                 ),
                               color: AppColors.white,
                         ),
                           child: Text( "30% OFF",
                           style: TextStyle(
                             fontSize: 8,
                           ),
                           ),
                         ),
                         ),
                       ],
                     ),
                     ),
                 ],
               ),
               Row(
                 children: [
                   Container(
                     height: 110,
                     width: 100,
                     margin: EdgeInsets.only(top: 10, left: 20),
                     decoration: BoxDecoration(
                         borderRadius: const BorderRadius.all(
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
                             child: Container(
                               //width: 149,
                               decoration: BoxDecoration(
                                 color: Colors.white,
                                 borderRadius: const BorderRadius.only(
                                   //topRight: Radius.circular(69),
                                   bottomLeft: Radius.circular(14),
                                   bottomRight: Radius.circular(14),
                                   // topLeft: Radius.circular(27)
                                 ),
                               ),
                               child: Column(
                                 crossAxisAlignment: CrossAxisAlignment.center,
                                 children: [
                                   Padding(
                                     padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 10),
                                     child: Text("Medicines",
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
                   ),
                   Container(
                     height: 110,
                     width: 100,
                     margin: EdgeInsets.only(top: 10, left: 20),
                     decoration: BoxDecoration(
                         borderRadius: const BorderRadius.all(
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
                             child: Container(
                               //width: 149,
                               decoration: BoxDecoration(
                                 color: Colors.white,
                                 borderRadius: const BorderRadius.only(
                                   //topRight: Radius.circular(69),
                                   bottomLeft: Radius.circular(14),
                                   bottomRight: Radius.circular(14),
                                   // topLeft: Radius.circular(27)
                                 ),
                               ),
                               child: Column(
                                 crossAxisAlignment: CrossAxisAlignment.center,
                                 children: const [
                                   Padding(
                                     padding: EdgeInsets.symmetric(vertical: 8,horizontal: 10),
                                     child: Text("Lab Tests",
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
                   ),
                   Container(
                     height: 110,
                     width: 100,
                     margin: EdgeInsets.only(top: 10, left: 20),
                     decoration: BoxDecoration(
                         borderRadius: const BorderRadius.all(
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
                             child: Container(
                               //width: 149,
                               decoration: BoxDecoration(
                                 color: Colors.white,
                                 borderRadius: const BorderRadius.only(
                                   //topRight: Radius.circular(69),
                                   bottomLeft: Radius.circular(14),
                                   bottomRight: Radius.circular(14),
                                   // topLeft: Radius.circular(27)
                                 ),
                               ),
                               child: Column(
                                 crossAxisAlignment: CrossAxisAlignment.center,
                                 children: const [
                                   Padding(
                                     padding: EdgeInsets.symmetric(vertical: 8,horizontal: 10),
                                     child: Text("Surgeries",
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
                   ),
                 ],
               ),
               SizedBox(height: 10,),
               Container(
                 margin: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                 child: Image.asset("img/covid.jpg"),
               ),
             ],
           )
             ),

    );
  }
}

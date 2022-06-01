import 'package:country_list_pick/country_list_pick.dart';
import 'package:flutter/material.dart';
import '../constant/colors.dart';

import '../router.dart';

class PhoneRegistration extends StatelessWidget {
  const PhoneRegistration ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   leading: IconButton(onPressed: () {  },
      //     icon: Icon(Icons.arrow_back),
      //
      //   ),
      // ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15,right: 25,),
              child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                IconButton(onPressed: () => Navigator.pushNamed(context,
                  Routes.loginScreen,),
                  icon: Icon(Icons.arrow_back),),
                  TextButton.icon(onPressed: (){}, icon: Icon(Icons.question_mark_sharp,color: AppColors.black,),
                    label: Text("Help",
                      style: TextStyle(color: AppColors.black),
                  ),),

                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,top: 20),
              child: Text("Enter Your mobile number",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold
              ),),
            ),
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
                  )
                  // InternationalPhoneNumberInput(onInputChanged: (value) {},
                  //   cursorColor: AppColors.black,
                  //   formatInput: false,
                  //   selectorConfig: SelectorConfig(
                  //     selectorType: PhoneInputSelectorType.DROPDOWN,
                  //   ),
                  //   inputDecoration: InputDecoration(
                  //     contentPadding: EdgeInsets.only(bottom: 15,left: 5),
                  //     border: InputBorder.none,
                  //     hintText: "Enter Phone Number",
                  //     hintStyle: TextStyle(
                  //       color: Colors.grey.shade500,
                  //       fontSize: 20,
                  //     )
                  //   ),
                  // ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text("By continung, you agree to our",
              style: TextStyle(
                fontSize: 15,
                color:Colors.grey.shade500,
              ),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text("Terms & condition",
                style: TextStyle(
                  fontSize: 15,
                  color: AppColors.black,
                  decoration: TextDecoration.underline,
                ),),
            ),
            SizedBox(height: 520,),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: MaterialButton(
                color: Colors.blue,
                onPressed: () => Navigator.pushNamed(context,
                  Routes.detailsScreen,),
                padding: EdgeInsets.only(left:20,right: 20),
                height: 50,
                minWidth: double.infinity,
                //shape: RoundedRectangleBorder(
                //   borderRadius: BorderRadius.circular(40)),
                child:
                Center(
                  child: Text("Continue",
                    style: const  TextStyle(
                      color: AppColors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      //height: 1.5,
                      //wordSpacing: 1.5,
                    ),),
                ),

              ),
            ),
            // Container(
            //   margin: EdgeInsets.only(top: 10),
            //   child: Stack(
            //     alignment: AlignmentDirectional.bottomCenter,
            //     children: [
            //       Positioned(
            //         bottom: 0,
            //         left: 5,
            //         right: 5,
            //         child:
            //         MaterialButton(
            //         color: Colors.blue,
            //         onPressed: (){},
            //         padding: EdgeInsets.only(left:20,right: 20),
            //         height: 50,
            //         minWidth: double.infinity,
            //         //shape: RoundedRectangleBorder(
            //         //   borderRadius: BorderRadius.circular(40)),
            //         child:
            //         Center(
            //           child: Text("Continue",
            //             style: const  TextStyle(
            //               color: AppColors.white,
            //               fontWeight: FontWeight.bold,
            //               fontSize: 20,
            //               //height: 1.5,
            //               //wordSpacing: 1.5,
            //             ),),
            //         ),
            //
            //       ) ,)
            //     ],
            //
            //   ),
            // ),

          ],
        ),
      ),
    );
  }
}

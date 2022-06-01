import 'package:flutter/material.dart';
import 'package:untitled1/router.dart';
import 'package:untitled1/ui/home_page.dart';
import 'package:untitled1/ui/login_screen.dart';
import 'package:untitled1/ui/search_page.dart';
import 'package:untitled1/utils/colors.dart';
import 'package:untitled1/widget/image_slider.dart';
import 'package:untitled1/ui/registration_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
      ),
      home:  const PhoneRegistration(),
      onGenerateRoute: RouterApp.generateRoute,
      initialRoute: Routes.registrationScreen,
      //DetailsPage(),
    );
  }
}


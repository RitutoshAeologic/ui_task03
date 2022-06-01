import 'package:flutter/material.dart';
import 'package:untitled1/ui/details_page.dart';
import 'package:untitled1/ui/home_page.dart';
import 'package:untitled1/ui/login_screen.dart';
import 'package:untitled1/ui/registration_screen.dart';
import 'package:untitled1/ui/search_page.dart';

class RouterApp {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.registrationScreen:
        return MaterialPageRoute(
            builder: (BuildContext context) =>  const PhoneRegistration());
      case Routes.detailsScreen:
        return MaterialPageRoute(
            builder: (BuildContext context) => const DetailsPage());
      case Routes.homeScreen:
        return MaterialPageRoute(
            builder: (BuildContext context) => const HomeScreen());
      case Routes.searchScreen:
        return MaterialPageRoute(
            builder: (BuildContext context) => const SearchScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(
            builder: (BuildContext context) => const LoginPage());
      default:
        return MaterialPageRoute(
          builder: (BuildContext context) => Scaffold(
            body: Center(
              child: Text('The Page ${settings.name} does not exists.'),
            ),
          ),
        );
    }
  }
}

class Routes {
  static const String homeScreen = '/homeScreen';
  static const String searchScreen = '/searchScreen';
  static const String detailsScreen = '/detailsScreen';
  static const String registrationScreen = '/RegistrationScreen';
  static const String loginScreen = '/loginScreen';
  static const String noInternetScreen = '/noInternetScreen';
}
import 'package:fl_cmpuno/models/menu_option.dart';
import 'package:flutter/material.dart';

import '../screens/screens.dart';

class AppRoutes{

  static const initialRoute = 'home';
  static final menuOptions = <MenuOption>[
    MenuOption(
      route: 'home', 
      icon: Icons.house_siding_sharp, 
      name: 'HomeScreen', 
      screen: const HomeScreen()),
    MenuOption(
      route: 'listview1', 
      icon: Icons.list_alt, 
      name: 'ListViewScreen1', 
      screen: const ListView1Screen()),
    MenuOption(
      route: 'listview2', 
      icon: Icons.list_alt_rounded, 
      name: 'ListViewScreen2', 
      screen: const ListView2Screen()),
    MenuOption(
      route: 'card', 
      icon: Icons.card_giftcard, 
      name: 'CardScreen', 
      screen: const CardScreen()),
    MenuOption(
      route: 'alert', 
      icon: Icons.bus_alert, 
      name: 'AlertScreen', 
      screen: const AlertScreen()),
    MenuOption(
      route: 'prueba', 
      icon: Icons.textsms_sharp, 
      name: 'PruebaScreen', 
      screen: const PruebaScreen()),
    MenuOption(
      route: 'avatar', 
      icon: Icons.all_inclusive_rounded, 
      name: 'AvatarScreen', 
      screen: const AvatarScreen()),
    MenuOption(
      route: 'animated', 
      icon: Icons.camera_alt_rounded, 
      name: 'AnimatedScreen', 
      screen:  const AnimatedScreen()),
    MenuOption(
      route: 'login', 
      icon: Icons.add_a_photo, 
      name: 'LoginScreen', 
      screen: const LoginPage())
  ];

  //Recorrido del menú
  static Map<String, Widget Function(BuildContext)> getAppRoutes(){
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    for (final options in menuOptions){
      appRoutes.addAll({options.route: (BuildContext context) => options.screen});
    }
    return appRoutes;
  }

  /*
  static Map<String, Widget Function(BuildContext)> routes = {
    'home': (BuildContext context) => const HomeScreen(),
    'listview1':(BuildContext context) => const ListView1Screen(),
    'listview2':(BuildContext context) => const ListView2Screen(),
    'card':(BuildContext context) => const CardScreen(),
    'alert':(BuildContext context) => const AlertScreen()
  };*/

  static Route<dynamic> onGenerateRoute(RouteSettings settings){
    print(settings);
    return MaterialPageRoute(
    builder:(context) => const AlertScreen(),
    );
  }

}
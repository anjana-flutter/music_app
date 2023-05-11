import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'music/home_page.dart';
import 'music/screen/route.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(
          bodyColor: Colors.white,
          decorationColor: Colors.white,
        )
      ),
    home: Home_page(),
    );
  }
}

// BottomNavigationBar(
// type: BottomNavigationBarType.fixed,
// backgroundColor: Colors.deepPurple.shade800,
// unselectedItemColor: Colors.white,
// selectedItemColor: Colors.white,
// showSelectedLabels: false,
// showUnselectedLabels: false,
// items: const [
// BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
// BottomNavigationBarItem(
// icon: Icon(Icons.favorite_outline), label: 'Favorites'),
// BottomNavigationBarItem(
// icon: Icon(Icons.play_circle_outline), label: 'play'),
// BottomNavigationBarItem(
// icon: Icon(Icons.people_outline), label: 'Profile'),
// ],
// ),
import 'package:flutter/material.dart';

import 'package:olshop/screens/product_screen_desktop.dart';

import 'screens/home_screen.dart';

// void main() {
//   runApp(const MyApp());
// }
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  String img;
  MyApp({
    Key? key,
    this.img = '',
  }) : super(key: key);
  // const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      home: ProductScreenDesktop(img),
      // home: HomeScreen(),
    );
  }
}

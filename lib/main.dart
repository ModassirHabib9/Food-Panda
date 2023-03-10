import 'package:flutter/material.dart';
import 'package:foodpanda_clone/lib/utils/default_color.dart';
import 'package:get/get.dart';

import 'lib/screens/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: DefaultColor.primaryswatch,
      ),
      home: const HomeScreen(),
    );
  }
}

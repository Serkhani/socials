import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:socials/pages/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryTextTheme: const TextTheme(
            titleLarge: TextStyle(
                fontSize: 35.0,
                fontFamily: "Ubuntu Condensed",
                color: Colors.grey,
                fontWeight: FontWeight.w900),
            titleMedium: TextStyle(
                fontSize: 20.0,
                color: Colors.grey,
                fontFamily: "Ubuntu Condensed",
                fontWeight: FontWeight.w700),
            titleSmall: TextStyle(
              fontSize: 12.0,
              color: Colors.grey,
              fontFamily: "Ubuntu Condensed",
            ),
          ),
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: Colors.grey.shade200),
      home: const MyHomePage(),
    );
  }
}

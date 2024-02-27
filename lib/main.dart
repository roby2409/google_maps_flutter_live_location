import 'package:flutter/material.dart';
import 'package:googlemapswithlocation/homepage.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, screenType) {
        return MaterialApp(
          title: "googlemapswithlocation",
          debugShowCheckedModeBanner: false,
          home: HomePage(),
        );
      },
    );
  }
}

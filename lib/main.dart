import 'package:filmy/core/services/services_locator.dart';
import 'package:flutter/material.dart';

import 'movies/presentaion/screens/movies_screen.dart';

void main() {
  ServicesLocator().init();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Filmy",
      home: MoviesScreen(),
    );
  }
}

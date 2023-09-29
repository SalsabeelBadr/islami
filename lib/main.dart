import 'package:flutter/material.dart';
import 'package:islami/my_theme_data.dart';
import 'package:islami/home.dart';
import 'package:islami/tabs/sura_detalis.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName : (context) => HomeScreen(),
        suradetalis.routeName : (context) => suradetalis(),

      },
      theme: mythemedata.lightTheme,
      darkTheme: mythemedata.darkTheme,

    );
  }
}

import 'package:flutter/material.dart';

import 'Config.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: Config.appName,
        theme: ThemeData(
          inputDecorationTheme: InputDecorationTheme(
            hintStyle:  TextStyle(color: Config.unSelectedTextColor),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Config.seconderyTextColor),
              borderRadius: BorderRadius.circular(5),
            ),
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 12,
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Config.primaryColor),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          brightness: Brightness.light,
          colorScheme: ColorScheme.fromSeed(seedColor: Config.primaryColor),
          useMaterial3: true,
        ),
        home: const Scaffold(
          body: Center(
            child: Text('Hello World'),
          ),
        )
    );
  }
}




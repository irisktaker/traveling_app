import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:traveling_app/screens/categories_screens.dart';
import 'package:traveling_app/screens/categories_trips_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('ar', 'AE'), // Arabic, with country code
        // Locale('en', ''), // English, no country code
        // Locale('es', ''), // Spanish, no country code
      ],
      title: 'Travel App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        // accentColor: , use this
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.amber),
        fontFamily: "ELMessiri",
        textTheme: ThemeData.light().textTheme.copyWith(
              headline5: const TextStyle(
                color: Colors.blue,
                fontSize: 24,
                fontFamily: "ELMessiri",
                fontWeight: FontWeight.bold,
              ),
              headline6: const TextStyle(
                color: Colors.white,
                fontSize: 26,
                fontFamily: "ELMessiri",
                fontWeight: FontWeight.bold,
              ),
            ),
      ),
      // home: CategoriesScreen(),
      initialRoute: '/',
      routes: {
        '/': (ctx) => CategoriesScreen(),
        CategoriesTripsScreen.screenRoute: (ctx) => CategoriesTripsScreen(),
      },
    );
  }
}

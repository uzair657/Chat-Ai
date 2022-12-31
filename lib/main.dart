import 'package:flutter/material.dart';

import 'features/app/home/home_page.dart';
import 'features/app/routes/on_generate_route.dart';
import 'features/app/splash/splash_screen.dart';

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
      title: 'ChatGPT',
      onGenerateRoute: OnGenerateRoute.route,
      theme: ThemeData(brightness: Brightness.dark),
      initialRoute: '/',
      routes: {
        "/": (context) {
          return SplashScreen(
            child: HomePage(),
          );
        }
      },
    );
  }
}



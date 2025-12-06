import 'package:flutter/material.dart';
import 'package:proper/HomePage.dart';
import 'package:proper/SettingPage.dart';
import 'package:proper/themes.dart';
import 'package:provider/provider.dart';

import 'ProfilePage.dart';
import 'StartPage.dart';
import 'aboutpage.dart';
import 'cart.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Cart(),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const StartPage(),
        routes: {
          'homepage': (context) => const HomePage(),
          'startpage': (context) => const StartPage(),
          'settingpage': (context) => const SettingPage(),
          'profilepage': (context) => const ProfilePage(),
          'aboutpage': (context) => const AboutPage(),
        },
        theme: lightMode,
        darkTheme: darkMode,
      ),
    );
  }
}

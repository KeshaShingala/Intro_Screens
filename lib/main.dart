import 'package:flutter/material.dart';
import 'package:intro_screen/views/screens/Homepage.dart';
import 'package:intro_screen/views/screens/Splashscreen.dart';
import 'package:intro_screen/views/screens/screen_1.dart';
import 'package:intro_screen/views/screens/screen_2.dart';
import 'package:intro_screen/views/screens/screen_3.dart';
import 'package:intro_screen/views/screens/screen_4.dart';
import 'package:shared_preferences/shared_preferences.dart';

int? counter = 0;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final pre = await SharedPreferences.getInstance();

  counter = pre.getInt('counter');

  await pre.setInt('counter', 1);

  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
        // routes: {
        //   '/' : (context) => const SplashScreen(),
        //   'screen_1' : (context) => const screen_1(),
        //   'screen_2' : (context) => const screen_2(),
        //   'screen_3' : (context) => const screen_3(),
        //   'screen_4' : (context) => const screen_4(),
        //   'Homepage' : (context) => const HomePage(),
        // },
  ));
}
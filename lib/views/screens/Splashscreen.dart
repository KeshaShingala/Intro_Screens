import 'package:flutter/material.dart';
import 'package:intro_screen/views/screens/Homepage.dart';
import 'package:intro_screen/views/screens/screen_1.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  logicIntro() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('counter', 1);
  }

  @override
  void initState() {
    super.initState();
    logicIntro();
    Future.delayed(
      const Duration(seconds: 3),
          () => Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => (counter == 0 || counter == null)
                ? const screen_1()
                : const HomePage(),
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
    children: [
        FlutterLogo(size: 120,),
        SizedBox(height: 20,),
        Text("Welcom\n  FlutterApp",style: TextStyle(color: Colors.indigo,fontSize: 30),)
            ],
        ),
      ),
      backgroundColor: Colors.blue.shade50

    );
  }
}

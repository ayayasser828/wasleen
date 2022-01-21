import 'package:flutter/material.dart';
import 'package:wasleen/screens/chat_screen.dart';
import 'package:flutter/services.dart';
import 'package:wasleen/screens/add_raider.dart';
import 'package:wasleen/screens/add_raider_done.dart';
import 'package:wasleen/screens/add_raider_info.dart';
import 'package:wasleen/screens/dash_driver.dart';
import 'package:wasleen/screens/dash_user.dart';
import 'package:wasleen/screens/driver_step.dart';
import 'package:wasleen/screens/driver_tracking_screen.dart';
import 'package:wasleen/screens/login_screen.dart';
import 'package:wasleen/screens/search_screen.dart';
import 'package:wasleen/screens/select_driver.dart';
import 'package:wasleen/screens/sms_otp.dart';
import 'package:wasleen/screens/sms_otp2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return MaterialApp(
      title: 'Wasleen',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue,
          fontFamily: "dinnextltw23"
      ),
      home: LoginScreen(),
      routes: {
        LoginScreen.routeName: (context) => LoginScreen(),
        SMSOTPScreen.routeName: (context) => SMSOTPScreen(),
        DashUserScreen.routeName: (context) => DashUserScreen(),
        SearchScreen.routeName: (context) => SearchScreen(),
        DriverTrackingScreen.routeName: (context) => DriverTrackingScreen(),
        SelectDriverScreen.routeName: (context) => SelectDriverScreen(),
        SMSOTP2Screen.routeName: (context) => SMSOTP2Screen(),
        DriverStepScreen.routeName: (context) => DriverStepScreen(),
        DashDriverScreen.routeName: (context) => DashDriverScreen(),
        ADDRaiderScreen.routeName: (context) => ADDRaiderScreen(),
        ADDRaiderInfoScreen.routeName: (context) => ADDRaiderInfoScreen(),
        ADDRaiderDoneScreen.routeName: (context) => ADDRaiderDoneScreen(),
        ChatScreen.routeName: (context) => ChatScreen()
      },
    );
  }
}


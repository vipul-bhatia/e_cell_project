
import 'package:e_cell_project/pages/alumini.dart';
import 'package:e_cell_project/pages/feedback.dart';
import 'package:e_cell_project/pages/home.dart';
import 'package:e_cell_project/pages/onboarding.dart';
import 'package:flutter/material.dart';
import '../pages/drawerGallery.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return 
           MaterialApp(
            title: 'NMIMS Shirpur',
            debugShowCheckedModeBanner: false,
            initialRoute: '/',
            routes: {
              '/': (context) => OnboardingWidget(),
              '/home': (context) => HomePage(),
              '/alumini':(context) => AluminiWidget(),
              '/feedback': (context) => feedbackPage(),
              '/drawerGallery': (context) => drawerGallery(),
              
            },
          );
        }
}
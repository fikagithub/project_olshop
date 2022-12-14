import 'package:flutter/material.dart';
import 'package:project_olshop/Screen/home_screen.dart';
import 'package:project_olshop/screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Future.delayed(const Duration(seconds: 2)),
      builder: (context, snapshot) {
        if(snapshot.connectionState == ConnectionState.waiting){
          return const Splashscreen();
        }else {
          return MaterialApp(
          title : 'Flutter Demo',
          theme : ThemeData (
            primarySwatch: Colors.blue,
          ),
          home : const HomePage(),
          );
        }
      },
    );
  }
}
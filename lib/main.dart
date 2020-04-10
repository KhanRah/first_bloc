import 'package:first_bloc/bloc/blocLogin.dart';
import 'package:first_bloc/bloc/blocProvider.dart';
import 'package:first_bloc/screens/splashScreen.dart';
import 'package:flutter/material.dart';


//App main method
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'First Bloc',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: BlocProvider(child: SplashScreen(), bloc:BlocLogin()));
  }
}

import 'package:flutter/material.dart';
import 'package:university_app/screens/Homepage.dart';
//ignore: unused_import
import 'package:university_app/screens/Abuses.dart';
import 'package:university_app/screens/splash_screen.dart';

void main()async {
 WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return const MaterialApp(
      title: 'Flutter Demo',
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
  
}

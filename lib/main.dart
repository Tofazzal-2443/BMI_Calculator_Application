
import 'package:bmi_calculator/pages/home_page.dart';
import 'package:bmi_calculator/pages/result_page.dart';
import 'package:bmi_calculator/provider/bmi_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(create: (context) => BmiProvider(), child: const MyApp(),)
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      initialRoute: HomePage.routeName,
      routes: {
        HomePage.routeName: (context) => HomePage(),
        ResultPage.routeName: (context) => ResultPage(),
      },
    );
  }
}

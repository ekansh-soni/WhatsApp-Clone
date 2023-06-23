import 'package:flutter/material.dart';
import 'package:whatsapp/Screens/homeScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          fontFamily: 'OpenSans',
          primaryColor: Color(0xFF075E54),
          colorScheme:
              ColorScheme.fromSwatch().copyWith(secondary: Color(0xff128C7E))),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

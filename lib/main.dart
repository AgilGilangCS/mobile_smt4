import 'package:flutter/material.dart';
import 'package:mobile_smt4/screens/login.dart';
import 'screens/form.dart';
import 'screens/homes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Keren',
      home: Forms(),
    );
  }
}

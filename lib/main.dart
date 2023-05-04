import 'package:flutter/material.dart';
import 'package:mobile_smt4/screens/login.dart';
import 'screens/form_meja.dart';
import 'screens/edit_meja.dart';
import 'screens/homes.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/src/widgets/image.dart';

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
      home: Edits_meja(),
    );
  }
}

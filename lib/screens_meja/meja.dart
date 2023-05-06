import 'dart:html';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Mejas extends StatelessWidget {
  const Mejas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xFFFFFFFF),
          centerTitle: true,
          title: Text(
            "Meja",
            style: GoogleFonts.poppins(
                color: Color(0xFF42454E), fontWeight: FontWeight.bold),
          ),
          elevation: 0,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_back),
            color: Color(0xFF42454E),
          )),
      body: SingleChildScrollView(),
    );
  }
}

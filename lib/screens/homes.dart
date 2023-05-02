import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Homes extends StatefulWidget {
  const Homes({super.key});

  @override
  State<Homes> createState() => _HomesState();
}

class _HomesState extends State<Homes> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF342D23),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Black Wooden",
          style: GoogleFonts.poppins(
              fontWeight: FontWeight.bold, color: Color(0xFFD8BC8C)),
        ),
        backgroundColor: Color(0xFF342D23),
        elevation: 0,
      ),
      body: Center(
          child: Container(
        margin: EdgeInsets.only(top: 221.0),
        height: 520,
        decoration: BoxDecoration(
          color: Color(0xFFD8BC8C),
          border: Border.all(color: Color(0xFF342D23)),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(47), topRight: Radius.circular(47)),
        ),
      )),
    );
  }
}

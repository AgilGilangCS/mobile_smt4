import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Catalogs extends StatefulWidget {
  const Catalogs({Key? key}) : super(key: key);

  @override
  State<Catalogs> createState() => _CatalogsState();
}

class _CatalogsState extends State<Catalogs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF42454E),
      appBar: AppBar(
        title: Text("Daftar Produk",
          style: GoogleFonts.poppins(
              fontWeight: FontWeight.bold, color: Color(0xFFF9683A)),
        ),
        centerTitle: true,
        backgroundColor: Color(0xFF42454E),
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Color(0xFFF9683A),
            )),
      ),
    );
  }
}

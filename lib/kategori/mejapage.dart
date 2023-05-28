import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class mejapage extends StatelessWidget {
  const mejapage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text("Meja Kategori", style: GoogleFonts.poppins(fontSize: 18,
            fontWeight: FontWeight.bold),),
            GridView(
              shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate:
                const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.7,
                  crossAxisSpacing: 6,
                  mainAxisSpacing: 6,
                ),),
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            )
        ,
      ]),
    ));
  }
}

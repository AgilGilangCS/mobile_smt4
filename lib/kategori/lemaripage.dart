import 'package:mobile_smt4/screen_lemari/detail_lemari.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class lemaripage extends StatelessWidget {
  const lemaripage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(children: [
        Text(
          "Kategori Lemari",
          style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        GridView(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.7,
            crossAxisSpacing: 6,
            mainAxisSpacing: 6,
          ),
          children: [
            Card(
              child: Container(
                margin: EdgeInsets.all(10.0),
                // child: ElevatedButton(
                //   onPressed: () {
                //     Navigator.push(context,
                //         MaterialPageRoute(builder: ((context) {
                //       return Details_lemari();
                //     })));
                //   },
                //   style: ElevatedButton.styleFrom(
                //     backgroundColor: Colors.white,
                //     elevation: 3,
                //   ),
                child: Column(
                  children: [
                    Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(8),
                        ),
                        child: Image.asset(
                          "assets/images/lemari/lemari1.jpeg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 5, vertical: 4),
                      child: Text(
                        "Lemari Kayu Pintu Tengah",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.black),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      child: Text(
                        "Rp.700.000",
                        style: GoogleFonts.poppins(color: Color(0xFFF9683A)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              child: Container(
                margin: EdgeInsets.all(10.0),
                // child: ElevatedButton(
                //   onPressed: () {
                //     Navigator.push(context,
                //         MaterialPageRoute(builder: ((context) {
                //       return Details_lemari();
                //     })));
                //   },
                //   style: ElevatedButton.styleFrom(
                //     backgroundColor: Colors.white,
                //     elevation: 3,
                //   ),
                child: Column(
                  children: [
                    Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(8),
                        ),
                        child: Image.asset(
                          "assets/images/lemari/lemari2.jpeg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 5, vertical: 4),
                      child: Text(
                        "Lemari Kayu 2 Pintu kaca",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.black),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      child: Text(
                        "Rp.750.000",
                        style: GoogleFonts.poppins(color: Color(0xFFF9683A)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              child: Container(
                margin: EdgeInsets.all(10.0),
                // child: ElevatedButton(
                //   onPressed: () {
                //     Navigator.push(context,
                //         MaterialPageRoute(builder: ((context) {
                //       return Details_lemari();
                //     })));
                //   },
                //   style: ElevatedButton.styleFrom(
                //     backgroundColor: Colors.white,
                //     elevation: 3,
                //   ),
                child: Column(
                  children: [
                    Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(8),
                        ),
                        child: Image.asset(
                          "assets/images/lemari/lemari3.jpeg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 5, vertical: 4),
                      child: Text(
                        "Lemari Kayu Kaca",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.black),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      child: Text(
                        "Rp.600.000",
                        style: GoogleFonts.poppins(color: Color(0xFFF9683A)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ]),
    ));
  }
}

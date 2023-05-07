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
      backgroundColor: Color(0xFFFFFFFF),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Black Wooden",
          style: GoogleFonts.poppins(
              fontWeight: FontWeight.bold, color: Color(0xFF42454E)),
        ),
        backgroundColor: Color(0xFFFFFFFFF),
        elevation: 0,
      ),
      body: ListView(children: [
        Container(
          margin: EdgeInsets.only(top: 221.0),
          height: 520,
          decoration: BoxDecoration(
            color: Color(0xFF42454E),
            border: Border.all(color: Color(0xFF42454E)),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(47), topRight: Radius.circular(47)),
          ),
          // Text Selamat Datang
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      " Selamat",
                      style: GoogleFonts.poppins(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFFFFFFF)),
                    ),
                    Text(
                      " Datang,",
                      style: GoogleFonts.poppins(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFF9683A)),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text("    Semangat",
                        style: GoogleFonts.poppins(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFFFFFFF))),
                    Text(" Bekerja",
                        style: GoogleFonts.poppins(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFF9683A))),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                // buttom
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // button meja
                      ElevatedButton(
                        onPressed: () {},
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset("assets/images/img-meja.png"),
                              Text(
                                "Meja",
                                style: GoogleFonts.openSans(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFFFFFFFF)),
                              )
                            ]),
                        style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.all(25),
                            backgroundColor: Color(0xFF676B77),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                            elevation: 6),
                      ),
                      // button kursi
                      ElevatedButton(
                        onPressed: () {},
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset("assets/images/img-kursi.png"),
                              Text(
                                "Kursi",
                                style: GoogleFonts.openSans(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFFFFFFFF)),
                              )
                            ]),
                        style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(
                                horizontal: 19, vertical: 7),
                            backgroundColor: Color(0xFF676B77),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                            elevation: 6),
                      ),
                    ],
                  ),
                ),
                // button 2
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset("assets/images/img-lemari.png"),
                              Text(
                                "Lemari",
                                style: GoogleFonts.openSans(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFFFFFFFF)),
                              )
                            ]),
                        style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(
                                horizontal: 33, vertical: 15),
                            backgroundColor: Color(0xFF676B77),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                            elevation: 6),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset("assets/images/img-riwayat.png"),
                              Text(
                                "Riwayat",
                                style: GoogleFonts.openSans(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFFFFFFFF)),
                              )
                            ]),
                        style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(
                                horizontal: 19, vertical: 7),
                            backgroundColor: Color(0xFF676B77),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                            elevation: 6),
                      ),
                      //
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}

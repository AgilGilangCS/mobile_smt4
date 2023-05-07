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
            onPressed: () {
              print("Kenek");
            },
            icon: Icon(Icons.arrow_back),
            color: Color(0xFF42454E),
          )),
      body: SafeArea(
        child: Stack(
          children: [
            // Background
            Container(
              width: 426,
              height: 740,
              decoration: BoxDecoration(
                color: Color(0xFF42454E),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
              ),
            ),
            // List
            Padding(
              padding: EdgeInsets.fromLTRB(0, 2, 0, 0),
              child: ListView(
                padding: EdgeInsets.zero,
                scrollDirection: Axis.vertical,
                children: [
                  // Body List
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 360,
                            height: 133,
                            decoration: BoxDecoration(
                              color: Color(0xFF676B77),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            // Isi Dalam List
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(10, 5, 0, 5),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                //  Nama Pemesan
                                children: [
                                  Text(
                                    'Pak Ferdi',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      color: Colors.white,
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  // Alamat
                                  SizedBox(height: 5),
                                  Text(
                                    'Jl.AYani no.5864',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      color: Colors.white,
                                      fontSize: 16,
                                    ),
                                  ),
                                  // Garis
                                  Divider(
                                    thickness: 1,
                                    color: Colors.grey,
                                  ),
                                  // Tanggal dan Icon Button
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    // Tanggal
                                    children: [
                                      Text(
                                        '25 Mei 2023',
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          color: Colors.white.withOpacity(0.6),
                                          fontSize: 16,
                                        ),
                                      ),
                                      // Icon Button
                                      IconButton(
                                        icon: Icon(
                                          Icons.arrow_right_rounded,
                                          color: Colors.white,
                                          size: 30,
                                        ),
                                        onPressed: () {
                                          print('IconButton pressed ...');
                                        },
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // Body List
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 360,
                            height: 133,
                            decoration: BoxDecoration(
                              color: Color(0xFF676B77),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            // Isi Dalam List
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(10, 5, 0, 5),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                //  Nama Pemesan
                                children: [
                                  Text(
                                    'Pak Ferdi',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      color: Colors.white,
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  // Alamat
                                  SizedBox(height: 5),
                                  Text(
                                    'Jl.AYani no.5864',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      color: Colors.white,
                                      fontSize: 16,
                                    ),
                                  ),
                                  // Garis
                                  Divider(
                                    thickness: 1,
                                    color: Colors.grey,
                                  ),
                                  // Tanggal dan Icon Button
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    // Tanggal
                                    children: [
                                      Text(
                                        '25 Mei 2023',
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          color: Colors.white.withOpacity(0.6),
                                          fontSize: 16,
                                        ),
                                      ),
                                      // Icon Button
                                      IconButton(
                                        icon: Icon(
                                          Icons.arrow_right_rounded,
                                          color: Colors.white,
                                          size: 30,
                                        ),
                                        onPressed: () {
                                          print('IconButton pressed ...');
                                        },
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // Body List
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 360,
                            height: 133,
                            decoration: BoxDecoration(
                              color: Color(0xFF676B77),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            // Isi Dalam List
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(10, 5, 0, 5),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                //  Nama Pemesan
                                children: [
                                  Text(
                                    'Pak Ferdi',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      color: Colors.white,
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  // Alamat
                                  SizedBox(height: 5),
                                  Text(
                                    'Jl.AYani no.5864',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      color: Colors.white,
                                      fontSize: 16,
                                    ),
                                  ),
                                  // Garis
                                  Divider(
                                    thickness: 1,
                                    color: Colors.grey,
                                  ),
                                  // Tanggal dan Icon Button
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    // Tanggal
                                    children: [
                                      Text(
                                        '25 Mei 2023',
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          color: Colors.white.withOpacity(0.6),
                                          fontSize: 16,
                                        ),
                                      ),
                                      // Icon Button
                                      IconButton(
                                        icon: Icon(
                                          Icons.arrow_right_rounded,
                                          color: Colors.white,
                                          size: 30,
                                        ),
                                        onPressed: () {
                                          print('IconButton pressed ...');
                                        },
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // Body List
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 360,
                            height: 133,
                            decoration: BoxDecoration(
                              color: Color(0xFF676B77),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            // Isi Dalam List
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(10, 5, 0, 5),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                //  Nama Pemesan
                                children: [
                                  Text(
                                    'Pak Ferdi',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      color: Colors.white,
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  // Alamat
                                  SizedBox(height: 5),
                                  Text(
                                    'Jl.AYani no.5864',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      color: Colors.white,
                                      fontSize: 16,
                                    ),
                                  ),
                                  // Garis
                                  Divider(
                                    thickness: 1,
                                    color: Colors.grey,
                                  ),
                                  // Tanggal dan Icon Button
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    // Tanggal
                                    children: [
                                      Text(
                                        '25 Mei 2023',
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          color: Colors.white.withOpacity(0.6),
                                          fontSize: 16,
                                        ),
                                      ),
                                      // Icon Button
                                      IconButton(
                                        icon: Icon(
                                          Icons.arrow_right_rounded,
                                          color: Colors.white,
                                          size: 30,
                                        ),
                                        onPressed: () {
                                          print('IconButton pressed ...');
                                        },
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // Body List
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 360,
                            height: 133,
                            decoration: BoxDecoration(
                              color: Color(0xFF676B77),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            // Isi Dalam List
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(10, 5, 0, 5),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                //  Nama Pemesan
                                children: [
                                  Text(
                                    'Pak Ferdi',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      color: Colors.white,
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  // Alamat
                                  SizedBox(height: 5),
                                  Text(
                                    'Jl.AYani no.5864',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      color: Colors.white,
                                      fontSize: 16,
                                    ),
                                  ),
                                  // Garis
                                  Divider(
                                    thickness: 1,
                                    color: Colors.grey,
                                  ),
                                  // Tanggal dan Icon Button
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    // Tanggal
                                    children: [
                                      Text(
                                        '25 Mei 2023',
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          color: Colors.white.withOpacity(0.6),
                                          fontSize: 16,
                                        ),
                                      ),
                                      // Icon Button
                                      IconButton(
                                        icon: Icon(
                                          Icons.arrow_right_rounded,
                                          color: Colors.white,
                                          size: 30,
                                        ),
                                        onPressed: () {
                                          print('IconButton pressed ...');
                                        },
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // Body List
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 360,
                            height: 133,
                            decoration: BoxDecoration(
                              color: Color(0xFF676B77),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            // Isi Dalam List
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(10, 5, 0, 5),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                //  Nama Pemesan
                                children: [
                                  Text(
                                    'Pak Ferdi',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      color: Colors.white,
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  // Alamat
                                  SizedBox(height: 5),
                                  Text(
                                    'Jl.AYani no.5864',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      color: Colors.white,
                                      fontSize: 16,
                                    ),
                                  ),
                                  // Garis
                                  Divider(
                                    thickness: 1,
                                    color: Colors.grey,
                                  ),
                                  // Tanggal dan Icon Button
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    // Tanggal
                                    children: [
                                      Text(
                                        '25 Mei 2023',
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          color: Colors.white.withOpacity(0.6),
                                          fontSize: 16,
                                        ),
                                      ),
                                      // Icon Button
                                      IconButton(
                                        icon: Icon(
                                          Icons.arrow_right_rounded,
                                          color: Colors.white,
                                          size: 30,
                                        ),
                                        onPressed: () {
                                          print('IconButton pressed ...');
                                        },
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // Body List
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 360,
                            height: 133,
                            decoration: BoxDecoration(
                              color: Color(0xFF676B77),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            // Isi Dalam List
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(10, 5, 0, 5),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                //  Nama Pemesan
                                children: [
                                  Text(
                                    'Pak Ferdi',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      color: Colors.white,
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  // Alamat
                                  SizedBox(height: 5),
                                  Text(
                                    'Jl.AYani no.5864',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      color: Colors.white,
                                      fontSize: 16,
                                    ),
                                  ),
                                  // Garis
                                  Divider(
                                    thickness: 1,
                                    color: Colors.grey,
                                  ),
                                  // Tanggal dan Icon Button
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    // Tanggal
                                    children: [
                                      Text(
                                        '25 Mei 2023',
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          color: Colors.white.withOpacity(0.6),
                                          fontSize: 16,
                                        ),
                                      ),
                                      // Icon Button
                                      IconButton(
                                        icon: Icon(
                                          Icons.arrow_right_rounded,
                                          color: Colors.white,
                                          size: 30,
                                        ),
                                        onPressed: () {
                                          print('IconButton pressed ...');
                                        },
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
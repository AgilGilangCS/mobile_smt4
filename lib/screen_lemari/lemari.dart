import 'dart:convert';

import 'package:mobile_smt4/screen_lemari/detail_lemari.dart';
import 'package:mobile_smt4/screen_lemari/form_lemari.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_smt4/homes.dart';

import 'package:http/http.dart' as http;

class Lemaris extends StatefulWidget {
  const Lemaris({Key? key});

  @override
  _LemarisState createState() => _LemarisState();
}

class _LemarisState extends State<Lemaris> {
  final String url = 'http://192.168.43.116:8080/api/lemaris';

  Future<List<dynamic>> getLemaris() async {
    var response = await http.get(Uri.parse(url));
    print(json.decode(response.body));
    return json.decode(response.body)['data'];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFFFFFF),
        centerTitle: true,
        title: Text(
          "Lemari",
          style: GoogleFonts.poppins(
            color: Color(0xFF42454E),
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Color(0xFF42454E),
          ),
        ),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            // Background
            Container(
              width: 426,
              height: 786,
              decoration: BoxDecoration(
                color: Color(0xFF42454E),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
              ),
            ),
            // List
            FutureBuilder<List<dynamic>>(
              future: getLemaris(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Container(
                    margin: EdgeInsets.all(10),
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
                                ListView.builder(
                                  shrinkWrap: true,
                                  physics: NeverScrollableScrollPhysics(),
                                  itemCount: snapshot.data!.length,
                                  itemBuilder: (context, index) {
                                    final lemari = snapshot.data![index];
                                    return Padding(
                                      padding: EdgeInsets.only(bottom: 10),
                                      child: Container(
                                        width: 360,
                                        height: 133,
                                        decoration: BoxDecoration(
                                          color: Color(0xFF676B77),
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        // Isi Dalam List
                                        child: Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(10, 5, 0, 5),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            // Nama Lemari
                                            children: [
                                              Text(
                                                lemari['nama_lemari'],
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  color: Colors.white,
                                                  fontSize: 24,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              // Alamat Lemari
                                              SizedBox(height: 5),
                                              Text(
                                                lemari['alamat_lemari'],
                                                style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  color: Colors.white,
                                                  fontSize: 16,
                                                ),
                                              ),
                                              // Garis
                                              Divider(
                                                thickness: 1,
                                                color: Color(0xFFF9683A),
                                              ),
                                              // Tanggal dan Icon Button
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                // Tanggal
                                                children: [
                                                  Text(
                                                    lemari['tanggal_lemari'],
                                                    style: TextStyle(
                                                      fontFamily: 'Poppins',
                                                      color: Colors.white
                                                          .withOpacity(0.6),
                                                      fontSize: 16,
                                                    ),
                                                  ),
                                                  // Icon Button
                                                  IconButton(
                                                    icon: Icon(
                                                      Icons.arrow_right_rounded,
                                                      color: Color(0XFFF9683A),
                                                      size: 30,
                                                    ),
                                                    onPressed: () {
                                                      print(
                                                          lemari['id_lemari']);
                                                      Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                          builder: (context) {
                                                            return Details_lemari(
                                                                data: snapshot
                                                                        .data![
                                                                    index]);
                                                          },
                                                        ),
                                                      );
                                                    },
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                } else if (snapshot.hasError) {
                  return Text('Data error');
                } else {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
              },
            ),
            Positioned(
              right: 34,
              bottom: 31,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return Forms_lemari();
                      },
                    ),
                  );
                },
                child: Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Color(0XFFF9683A),
                  ),
                  child: Icon(
                    Icons.add,
                    color: Color(0xFFFFFFFF),
                    size: 35,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

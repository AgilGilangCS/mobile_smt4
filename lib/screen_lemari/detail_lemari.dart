import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_smt4/screen_lemari/edit_lemari.dart';

class Details_lemari extends StatefulWidget {
  const Details_lemari({super.key});

  @override
  State<Details_lemari> createState() => _Details_lemariState();
}

class _Details_lemariState extends State<Details_lemari> {
  TextEditingController datetimeinput = TextEditingController();
  @override
  void initState() {
    datetimeinput.text = "";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF42454E),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xFF42454E),
        elevation: 0,
        title: Text(
          "Detail",
          style: GoogleFonts.poppins(
              fontWeight: FontWeight.bold, color: Color(0xFFF9683A)),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Color(0xFFF9683A),
            )),
      ),
      // Body
      body: ListView(padding: EdgeInsets.only(left: 20, right: 10), children: [
        SizedBox(
          height: 70,
        ),
        // Nama Pesanan
        Text(
          "Nama Pesanan",
          style: GoogleFonts.poppins(
              fontSize: 16,
              color: Color(0xFFFFFFFF),
              fontWeight: FontWeight.bold),
        ),
        // output
        Text(
          "Ferdi Tok",
          style: GoogleFonts.poppins(
            fontSize: 16,
            color: Color(0xFFFFFFFF),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        // Alamat
        Text(
          "Alamat",
          style: GoogleFonts.poppins(
              fontSize: 16,
              color: Color(0xFFFFFFFF),
              fontWeight: FontWeight.bold),
        ),
        // output
        Text(
          "Banyuwangi",
          style: GoogleFonts.poppins(
            fontSize: 16,
            color: Color(0xFFFFFFFF),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        // No.Telepon
        Text(
          "No.Telepon",
          style: GoogleFonts.poppins(
              fontSize: 16,
              color: Color(0xFFFFFFFF),
              fontWeight: FontWeight.bold),
        ),
        // output
        Text(
          "081234567898",
          style: GoogleFonts.poppins(
            fontSize: 16,
            color: Color(0xFFFFFFFF),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        // Deskripsi
        Text(
          "Deskripsi",
          style: GoogleFonts.poppins(
              fontSize: 16,
              color: Color(0xFFFFFFFF),
              fontWeight: FontWeight.bold),
        ),
        // output
        Text(
          "lemari makan ukuran 3 meter x 2.5 meter, bahan kayu jati, kaca menggunakan ketebalan 5 cm",
          style: GoogleFonts.poppins(
            fontSize: 16,
            color: Color(0xFFFFFFFF),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        // Tanggal
        Text(
          "Batas Tanggal",
          style: GoogleFonts.poppins(
              fontSize: 16,
              color: Color(0xFFFFFFFF),
              fontWeight: FontWeight.bold),
        ),
        // output
        Text(
          "25 mei 2023",
          style: GoogleFonts.poppins(
            fontSize: 16,
            color: Color(0xFFFFFFFF),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        // Button Edit
        ElevatedButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return Edits_lemari();
              },
            ));
          },
          child: Text("Edit"),
          style: ElevatedButton.styleFrom(
              primary: Color(0xFFF9683A),
              onPrimary: Color(0xFFFFFFFFF),
              minimumSize: Size(0, 40),
              textStyle: GoogleFonts.poppins(
                  textStyle:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0)),
              shape: ContinuousRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              shadowColor: Color(0XFF000000)),
        )
      ]),
    );
  }
}
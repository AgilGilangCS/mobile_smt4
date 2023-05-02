import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:google_fonts/google_fonts.dart';

class Forms extends StatefulWidget {
  const Forms({super.key});

  @override
  State<Forms> createState() => _FormsState();
}

class _FormsState extends State<Forms> {
  TextEditingController datetimeinput = TextEditingController();
  @override
  void initState() {
    datetimeinput.text = "";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFD8BC8C),
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color(0xFFD8BC8C),
          elevation: 0,
          title: Text(
            "Tambahkan Data Meja",
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.bold, color: Color(0xFF342D23)),
          )),
      // Body
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFFC1D5A4),
                ),
                // Nama Pesanan
                child: TextFormField(
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(color: Color(0xFF342D23))),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      hintText: "Nama Pesanan",
                      labelText: "Nama pesanan",
                      labelStyle: TextStyle(color: Color(0xA4342D23)),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 15)),
                ),
              ),
              // Alamat
              SizedBox(
                height: 15,
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFFC1D5A4),
                ),
                // form alamat
                child: TextFormField(
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(color: Color(0xFF342D23))),
                  maxLines: 3,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      hintText: "Alamat",
                      labelText: "Alamat",
                      labelStyle:
                          TextStyle(color: Color.fromRGBO(52, 45, 35, 0.65)),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 15)),
                ),
              ),
              // no.hp
              SizedBox(
                height: 15,
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFFC1D5A4),
                ),
                // form no.hp
                child: TextFormField(
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(color: Color(0xFF342D23))),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      hintText: "No.Handphone",
                      labelText: "No.Handphone",
                      labelStyle:
                          TextStyle(color: Color.fromRGBO(52, 45, 35, 0.65)),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 15)),
                  keyboardType: TextInputType.number,
                ),
              ),
              // deskripsi
              SizedBox(
                height: 15,
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFFC1D5A4),
                ),
                // deskripsi
                child: TextFormField(
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(color: Color(0xFF342D23))),
                  maxLines: 3,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      hintText: "Deskripsi",
                      labelText: "Deskripsi",
                      labelStyle:
                          TextStyle(color: Color.fromRGBO(52, 45, 35, 0.65)),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 15)),
                ),
              ),
              // tanggal
              SizedBox(
                height: 15,
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFFC1D5A4),
                ),
                // tanggal
                child: TextFormField(
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(color: Color(0xFF342D23))),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(
                        10,
                      )),
                      hintText: "Tanggal",
                      labelText: "Tanggal",
                      labelStyle:
                          TextStyle(color: Color.fromRGBO(52, 45, 35, 0.65)),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 15)),
                  controller: datetimeinput,
                  readOnly: true,
                  onTap: () async {
                    DateTime? pickedDate = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2020),
                      lastDate: DateTime(2040),
                    );
                    if (pickedDate != null) {
                      String formatDate =
                          DateFormat('dd MMMM yyyy').format(pickedDate);
                      setState(() {
                        datetimeinput.text = formatDate;
                      });
                    } else {
                      datetimeinput.text = "";
                    }
                  },
                ),
              ),
              SizedBox(
                height: 15,
              ),
              // Button
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Color.fromRGBO(193, 213, 164, 1),
                          onPrimary: Color.fromRGBO(52, 45, 35, 65),
                          minimumSize: Size(150, 40),
                          textStyle: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16.0)),
                          shape: ContinuousRectangleBorder(
                              borderRadius: BorderRadius.circular(20))),
                      onPressed: () {},
                      child: Text("Batal"),
                    ),
                  ),
                  Container(
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Color.fromRGBO(52, 45, 35, 1),
                              onPrimary: Color.fromRGBO(193, 213, 164, 1),
                              minimumSize: Size(150, 40),
                              textStyle: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16.0)),
                              shape: ContinuousRectangleBorder(
                                  borderRadius: BorderRadius.circular(20))),
                          onPressed: () {},
                          child: Text("Simpan"))),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

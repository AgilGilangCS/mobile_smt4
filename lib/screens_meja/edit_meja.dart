import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

import '../homes.dart';

class Edits_meja extends StatefulWidget {
  final Map ListData;
  const Edits_meja({Key? key, required this.ListData}) : super(key: key);

  @override
  State<Edits_meja> createState() => _Edits_mejaState();
}

class _Edits_mejaState extends State<Edits_meja> {
  final formKey = GlobalKey<FormState>();
  TextEditingController id = TextEditingController();
  TextEditingController namapesanan = TextEditingController();
  TextEditingController alamat = TextEditingController();
  TextEditingController notelepon = TextEditingController();
  TextEditingController deskripsi = TextEditingController();
  TextEditingController datetimeinput = TextEditingController();
  TextEditingController harga = TextEditingController();
  
  File? image;

  Future getImage() async {
    final ImagePicker _picker = ImagePicker();
    final XFile? imagePicker =
        await _picker.pickImage(source: ImageSource.gallery);
    image = File(imagePicker!.path);
    setState(() {});
  }

  Future _update() async {
    final respone = await http
        .post(Uri.parse('http://192.168.1.32/ip_config/edit.php'), body: {
      "id": id.text,
      "namapesanan": namapesanan.text,
      "alamat": namapesanan.text,
      "notelepon": notelepon.text,
      "deskripsi": deskripsi.text,
      "datetimeinput": datetimeinput.text,
      "harga": harga.text,
    });
    if (respone.statusCode == 200) {
      return true;
    }
    return false;
  }

  @override
  void initState() {
    datetimeinput.text = "";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    namapesanan.text = widget.ListData['namapesanan'];
    alamat.text = widget.ListData['alamat'];
    notelepon.text = widget.ListData['notelepon'];
    deskripsi.text = widget.ListData['deskripsi'];
    datetimeinput.text = widget.ListData['datetimeinput'];
    harga.text = widget.ListData['harga'];
    return Scaffold(
      backgroundColor: Color(0xFF42454E),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xFF42454E),
        elevation: 0,
        title: Text(
          "Edit",
          style: GoogleFonts.poppins(
              fontWeight: FontWeight.bold, color: Color(0xFFF9683A)),
        ),
        leading: Container(),
      ),
      // Body
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              image != null
                  ? Container(
                      height: 200,
                      width: MediaQuery.of(context).size.width,
                      child: Image.file(
                        image!,
                        fit: BoxFit.cover,
                      ))
                  : Container(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () async {
                      await getImage();
                    },
                    child: Text("Ganti Foto"),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0XFFF9683A),
                      onPrimary: Color(0XFFFFFFFF),
                      textStyle: GoogleFonts.poppins(),
                    ),
                  ),
                ],
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFF676B77),
                ),
                // Nama Pesanan
                child: TextFormField(
                  controller: namapesanan,
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(color: Color(0xFFFFFFFF))),
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFFFFFFFF))),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0x00FFFFFF))),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      hintText: "Nama Pesanan",
                      hintStyle: TextStyle(color: Color(0xFFFFFFFF)),
                      labelText: "Nama pesanan",
                      labelStyle: TextStyle(color: Color(0xFFFFFFFF)),
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
                  color: Color(0xFF676B77),
                ),
                // form alamat
                child: TextFormField(
                  controller: alamat,
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(color: Color(0xFFFFFFFF))),
                  maxLines: 3,
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFFFFFFFF))),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0x00FFFFFF))),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      hintText: "Alamat",
                      hintStyle: TextStyle(color: Color(0xFFFFFFFF)),
                      labelText: "Alamat",
                      labelStyle: TextStyle(color: Color(0XFFFFFFFF)),
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
                  color: Color(0xFF676B77),
                ),
                // form no.hp
                child: TextFormField(
                  controller: notelepon,
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(color: Color(0xFFFFFFFF))),
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFFFFFFFF))),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0x00FFFFFF))),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      hintText: "No.Handphone",
                      hintStyle: TextStyle(color: Color(0xFFFFFFFF)),
                      labelText: "No.Handphone",
                      labelStyle: TextStyle(color: Color(0XFFFFFFFF)),
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
                  color: Color(0xFF676B77),
                ),
                // deskripsi
                child: TextFormField(
                  controller: deskripsi,
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(color: Color(0xFFFFFFFF))),
                  maxLines: 3,
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFFFFFFFF))),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0x00FFFFFF))),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      hintText: "Deskripsi",
                      hintStyle: TextStyle(color: Color(0xFFFFFFFF)),
                      labelText: "Deskripsi",
                      labelStyle: TextStyle(color: Color(0XFFFFFFFF)),
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
                  color: Color(0xFF676B77),
                ),
                // tanggal
                child: TextFormField(
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(color: Color(0xFFFFFFFF))),
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFFFFFFFF))),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0x00FFFFFF))),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(
                        10,
                      )),
                      hintText: "Tanggal",
                      hintStyle: TextStyle(color: Color(0xFFFFFFFF)),
                      labelText: "Tanggal",
                      labelStyle: TextStyle(color: Color(0XFFFFFFFF)),
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
                height: 30,
              ),
              // Button
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Color(0XFF676B77),
                          onPrimary: Color(0XFFFFFFFF),
                          minimumSize: Size(150, 40),
                          textStyle: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18.0)),
                          shape: ContinuousRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          shadowColor: Color(0XFF000000)),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text("Batal"),
                    ),
                  ),
                  // Button
                  Container(
                      // Button Simpan
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Color(0XFFF9683A),
                              onPrimary: Color(0XFFFFFFFF),
                              minimumSize: Size(150, 40),
                              textStyle: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18.0)),
                              shape: ContinuousRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              shadowColor: Color(0XFF000000)),
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              _update().then((value) {
                                if (value) {
                                  final snackBar = SnackBar(
                                    content:
                                        const Text('Data Berhasil Di Update'),
                                  );
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(snackBar);
                                } else {
                                  final snackBar = SnackBar(
                                    content: const Text('Data Gagal Di Update'),
                                  );
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(snackBar);
                                }
                              });
                              Navigator.pushAndRemoveUntil(
                                  context,
                                  MaterialPageRoute(
                                      builder: ((context) => Homes())),
                                  (route) => false);
                            }
                          },
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

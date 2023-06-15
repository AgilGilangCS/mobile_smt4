import 'dart:convert';
import 'dart:io';
<<<<<<< HEAD

import 'package:mobile_smt4/screens_meja/meja.dart';
=======
import 'package:http/http.dart' as http;
>>>>>>> 85035bf2f0f492b87410a8fe4ddd9533fa6ff419
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
<<<<<<< HEAD
import 'package:http/http.dart' as http;
import 'package:dio/dio.dart';
import 'package:intl/intl.dart';
=======
import 'package:mobile_smt4/homes.dart';
>>>>>>> 85035bf2f0f492b87410a8fe4ddd9533fa6ff419

class Forms_meja extends StatefulWidget {
  const Forms_meja({Key? key}) : super(key: key);

  @override
  State<Forms_meja> createState() => _Forms_mejaState();
}

class _Forms_mejaState extends State<Forms_meja> {
<<<<<<< HEAD
  File? _image;
  final _picker = ImagePicker();

  Future<void> _pickImage() async {
    final pickedFile = await _picker.getImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

  Future<void> _uploadImage(File imageFile) async {
    var request = http.MultipartRequest(
      'POST',
      Uri.parse(
          'http://192.168.43.116:8080/api/mejas/'), // Ganti dengan URL endpoint Anda
    );

    var multipartFile =
        await http.MultipartFile.fromPath('image', imageFile.path);
    request.files.add(multipartFile);

    var response = await request.send();

    if (response.statusCode == 200) {
      print('Gambar berhasil diupload');
    } else {
      print('Gagal mengupload gambar');
    }
  }

  TextEditingController date = TextEditingController();
  TextEditingController _namaController = TextEditingController();
  TextEditingController _alamatController = TextEditingController();
  TextEditingController _telpController = TextEditingController();
  TextEditingController _deskripsiController = TextEditingController();
  TextEditingController _hargaController = TextEditingController();

  Future saveMeja() async {
    final response = await http.post(
      Uri.parse("http://192.168.43.116:8080/api/mejas"),
      body: {
        "nama_meja": _namaController.text,
        "alamat_meja": _alamatController.text,
        "telp_meja": _telpController.text,
        "deskripsi_meja": _deskripsiController.text,
        "tanggal_meja": date.text,
        "harga_meja": _hargaController.text,
        "image_meja": _image != null ? _image!.path.split('/').last : "",
      },
    );
    print(response.body);

    return json.decode(response.body);
=======
  final formKey = GlobalKey<FormState>();
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

  Future _simpan() async {
    final respone = await http
        .post(Uri.parse('http://192.168.1.32/ip_config/create.php'), body: {
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
>>>>>>> 85035bf2f0f492b87410a8fe4ddd9533fa6ff419
  }

  @override
  void initState() {
    date.text = "";
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
          "Tambahkan Data Meja",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color(0xFFF9683A),
          ),
        ),
        leading: Container(),
      ),
      body: SingleChildScrollView(
        key: formKey,
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
<<<<<<< HEAD
              _image != null
                  ? Image.file(
                      _image!,
                    )
                  : Text(
                      "Masukan gambar meja",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
              SizedBox(height: 20),
              // TextFormField lainnya
=======
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
                    child: Text("Tambahkan Foto"),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0XFFF9683A),
                      onPrimary: Color(0XFFFFFFFF),
                      textStyle: GoogleFonts.poppins(),
                    ),
                  ),
                ],
              ),
>>>>>>> 85035bf2f0f492b87410a8fe4ddd9533fa6ff419
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFF676B77),
                ),
                child: TextFormField(
<<<<<<< HEAD
                  controller: _namaController,
                  decoration: InputDecoration(
                    labelText: "Nama",
                    labelStyle: GoogleFonts.poppins(
                      color: Colors.white,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFF676B77),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFF9683A),
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFF676B77),
                ),
                child: TextFormField(
                  controller: _alamatController,
                  decoration: InputDecoration(
                    labelText: "Alamat",
                    labelStyle: GoogleFonts.poppins(
                      color: Colors.white,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFF676B77),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFF9683A),
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFF676B77),
                ),
                child: TextFormField(
                  controller: _telpController,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    labelText: "Nomor Telepon",
                    labelStyle: GoogleFonts.poppins(
                      color: Colors.white,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFF676B77),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFF9683A),
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFF676B77),
                ),
                child: TextFormField(
                  controller: _deskripsiController,
                  maxLines: 3,
                  decoration: InputDecoration(
                    labelText: "Deskripsi",
                    labelStyle: GoogleFonts.poppins(
                      color: Colors.white,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFF676B77),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFF9683A),
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFF676B77),
                ),
                child: TextFormField(
                  controller: date,
                  decoration: InputDecoration(
                    labelText: "Tanggal",
                    labelStyle: GoogleFonts.poppins(
                      color: Colors.white,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFF676B77),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFF9683A),
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  readOnly: true,
                  onTap: () async {
                    DateTime? selectedDate = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2000),
                      lastDate: DateTime(2025),
                    );
                    if (selectedDate != null) {
                      setState(() {
                        date.text =
                            DateFormat('yyyy-MM-dd').format(selectedDate);
                      });
                    }
                  },
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFF676B77),
                ),
                child: TextFormField(
                  controller: _hargaController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: "Harga",
                    labelStyle: GoogleFonts.poppins(
                      color: Colors.white,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFF676B77),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFF9683A),
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () async {
                  await _pickImage();
                  await _uploadImage;
                  await saveMeja();
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => Mejas()),
                  );
                },
                child: Text(
                  "Tambah",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFFF9683A),
                ),
              ),
=======
                  controller: namapesanan,
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(color: Color(0xFFFFFFFF))),
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFFF9683A))),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0x00FFFFFF))),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      hintText: "Nama Pesanan",
                      hintStyle: TextStyle(color: Color(0xFFF9683A)),
                      labelText: "Nama pesanan",
                      labelStyle: TextStyle(color: Color(0xFFFFFFFF)),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 15)),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Nama Pesanan Tidak Boleh Kosong";
                    }
                  },
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
                          borderSide: BorderSide(color: Color(0xFFF9683A))),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0x00FFFFFF))),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      hintText: "Alamat",
                      hintStyle: TextStyle(color: Color(0xFFF9683A)),
                      labelText: "Alamat",
                      labelStyle: TextStyle(color: Color(0XFFFFFFFF)),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 15)),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Alamat Tidak Boleh Kosong";
                    }
                  },
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
                          borderSide: BorderSide(color: Color(0xFFF9683A))),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0x00FFFFFF))),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      hintText: "No.Handphone",
                      hintStyle: TextStyle(color: Color(0xFFF9683A)),
                      labelText: "No.Handphone",
                      labelStyle: TextStyle(color: Color(0XFFFFFFFF)),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 15)),
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "No Telepon Tidak Boleh Kosong";
                    }
                  },
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
                          borderSide: BorderSide(color: Color(0xFFF9683A))),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0x00FFFFFF))),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      hintText: "Deskripsi",
                      hintStyle: TextStyle(color: Color(0xFFF9683A)),
                      labelText: "Deskripsi",
                      labelStyle: TextStyle(color: Color(0XFFFFFFFF)),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 15)),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Deskripsi Tidak Boleh Kosong";
                    }
                  },
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
                          borderSide: BorderSide(color: Color(0xFFF9683A))),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0x00FFFFFF))),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(
                        10,
                      )),
                      hintText: "Tanggal",
                      hintStyle: TextStyle(color: Color(0xFFF9683A)),
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
                    // Button Batal
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
                              _simpan().then((value) {
                                if (value) {
                                  final snackBar = SnackBar(
                                    content:
                                        const Text('Data Berhasil Di Simpan'),
                                  );
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(snackBar);
                                } else {
                                  final snackBar = SnackBar(
                                    content: const Text('Data Gagal Di Simpan'),
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
>>>>>>> 85035bf2f0f492b87410a8fe4ddd9533fa6ff419
            ],
          ),
        ),
      ),
    );
  }
}

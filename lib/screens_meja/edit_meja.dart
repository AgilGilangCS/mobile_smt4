import 'dart:convert';
import 'dart:io';
<<<<<<< HEAD

import 'package:dio/dio.dart';
=======
import 'package:http/http.dart' as http;
>>>>>>> 85035bf2f0f492b87410a8fe4ddd9533fa6ff419
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:http/http.dart' as http;

import '../homes.dart';

class Edits_meja extends StatefulWidget {
<<<<<<< HEAD
  final String idMeja;

  const Edits_meja({Key? key, required this.idMeja}) : super(key: key);
=======
  final Map ListData;
  const Edits_meja({Key? key, required this.ListData}) : super(key: key);
>>>>>>> 85035bf2f0f492b87410a8fe4ddd9533fa6ff419

  @override
  State<Edits_meja> createState() => _Edits_mejaState();
}

class _Edits_mejaState extends State<Edits_meja> {
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

  Future<void> _uploadImage() async {
    if (_image != null) {
      final url = "http://192.168.43.116:8080/api/mejas/${widget.idMeja}";
      final dio = Dio();

      FormData formData = FormData.fromMap({
        "image_meja": await MultipartFile.fromFile(
          _image!.path,
          filename: _image!.path.split('/').last,
        ),
      });

      try {
        final response = await dio.put(url, data: formData);
        if (response.statusCode == 200) {
          print("Image uploaded successfully");
        } else {
          print("Failed to upload image. Error: ${response.statusMessage}");
        }
      } catch (e) {
        print("Error uploading image: $e");
      }
    } else {
      print("No image selected");
    }
  }

  TextEditingController date = TextEditingController();
  TextEditingController _namaController = TextEditingController();
  TextEditingController _alamatController = TextEditingController();
  TextEditingController _telpController = TextEditingController();
  TextEditingController _deskripsiController = TextEditingController();
  TextEditingController _hargaController = TextEditingController();

  Future<void> fetchMeja() async {
    final response = await http.get(
        Uri.parse("http://192.168.43.116:8080/api/mejas/${widget.idMeja}"));

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      if (data['data'] != null && data['data'].length > 0) {
        final meja = data['data'];
        if (meja != null) {
          setState(() {
            _namaController.text = meja["nama_meja"].toString();
            _alamatController.text = meja["alamat_meja"].toString();
            _telpController.text = meja["telp_meja"].toString();
            _deskripsiController.text = meja["deskripsi_meja"].toString();
            date.text = meja["tanggal_meja"].toString();
            _hargaController.text = meja["harga_meja"].toString();
          });
        } else {
          print("No data available");
        }
      } else {
        print("No data available");
      }
    } else {
      print("Failed to fetch meja. Error: ${response.reasonPhrase}");
    }
  }

  Future<void> saveMeja() async {
    final response = await http.put(
      Uri.parse("http://192.168.43.116:8080/api/mejas/${widget.idMeja}"),
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

    return json.decode(response.body);
=======
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
>>>>>>> 85035bf2f0f492b87410a8fe4ddd9533fa6ff419
  }

  @override
  void initState() {
    date.text = "";
    fetchMeja(); // Mengambil data meja saat inisialisasi
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
          "Edit Data Meja",
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.bold,
            color: Color(0xFFF9683A),
          ),
        ),
        leading: Container(),
      ),
      body: SingleChildScrollView(
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
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
              SizedBox(height: 20),
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
                    child: Text("Ganti Foto"),
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
                  onTap: () async {
                    final DateTime? picked = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2022),
                      lastDate: DateTime(2025),
                    );
                    if (picked != null && picked != DateTime.now()) {
                      setState(() {
                        date.text = DateFormat('yyyy-MM-dd').format(picked);
                      });
                    }
                  },
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
                  await _uploadImage();
                  await saveMeja();
                  Navigator.of(context).pop();
                },
                child: Text(
                  "Simpan",
                  style: GoogleFonts.poppins(
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
>>>>>>> 85035bf2f0f492b87410a8fe4ddd9533fa6ff419
            ],
          ),
        ),
      ),
    );
  }
}

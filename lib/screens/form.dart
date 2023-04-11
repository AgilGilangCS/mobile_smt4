import 'package:flutter/material.dart';

class Forms extends StatelessWidget {
  const Forms({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      appBar: AppBar(
        title: Text("Data pesanan"),
      ),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      hintText: "Nama Pemesan",
                      labelText: "Nama pemesan",
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 15)),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: TextField(
                      maxLines: 3,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          hintText: "Alamat",
                          labelText: "Alamat",
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 15, vertical: 15)),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          hintText: "No.Handphone",
                          labelText: "No.Handphone",
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 15, vertical: 15)),
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: TextField(
                      maxLines: 3,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          hintText: "Deskripsi",
                          labelText: "Deskripsi",
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 15, vertical: 15)),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  void onChanged(Object? value) {}
}

import 'dart:ui';

import 'package:costku/pages/tujuan/tujuan2.dart';
import 'package:flutter/material.dart';

class BuatTujuan extends StatefulWidget {
  const BuatTujuan({Key? key}) : super(key: key);
  // ignore: constant_identifier_names
  static const String Add = '/tambah';
  @override
  _BuatTujuanState createState() => _BuatTujuanState();
}

class _BuatTujuanState extends State<BuatTujuan> {
  final _formKey = GlobalKey<FormState>();

  String? _selectedTransactionType;

  String _kategori = 'Dompet';
  final List<String> _listKategori = ['Pilih Sumber Keuangan', 'Dompet', 'Rekening', 'Kartu Debit/Kredit', 'E-Money'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Color(0xFF0193DE),
        title: Text(
          'Tambah Tujuan Keuangan',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 255, 255, 255),
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Color.fromARGB(255, 255, 255, 255),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(1),
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 16),
            height: 1,
            color: Colors.grey[300],
          ),
        ),
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //pilihan box
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _selectedTransactionType = 'Buat Tujuan';
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: _selectedTransactionType == 'Buat Tujuan' ? Colors.blue : Colors.white,
                        border: Border.all(color: Color(0xFF0193DE)),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      child: Text('Buat Tujuan'),
                    ),
                  ),
                  SizedBox(width: 10),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _selectedTransactionType = 'Atur Target';
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: _selectedTransactionType == 'Atur Target' ? Colors.blue : Colors.white,
                        border: Border.all(color: Color(0xFF0193DE)),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 0),
                      child: TextButton(
                        child: Text(
                          'Atur Target',
                          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w400),
                        ),
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.symmetric(horizontal: 5, vertical: 0),
                          minimumSize: Size(50, 30),
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          alignment: Alignment.centerLeft,
                        ),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                            return const BuatTujuan2();
                          }));
                        },
                      ),
                    ),
                  ),
                ],
              ),
              //input nominal
              SizedBox(height: 20),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  SizedBox(height: 10),
                  Center(
                    child: Text(
                      'Pilih ikon kategori',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text(
                'Kategori',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Masukkan Kategori',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.text,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Kategori harus diisi';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              Text(
                'Berapa Total yang ingin Kamu Tabung?',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Rp ',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Besaran harus diisi';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              Text(
                'Sumber Keuangan',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              DropdownButtonFormField<String>(
                value: _kategori,
                items: _listKategori
                    .map((kategori) => DropdownMenuItem(
                          child: Text(kategori),
                          value: kategori,
                        ))
                    .toList(),
                onChanged: (selectedKategori) {
                  setState(() {
                    _kategori = selectedKategori!;
                  });
                },
                decoration: InputDecoration(
                  hintText: 'Pilih Sumber Keuangan',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Sumber keuangan harus dipilih';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  // aksi yang ingin dilakukan saat tombol simpan ditekan
                },
                child: Text('Simpan'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue, // warna latar belakang tombol
                  onPrimary: Colors.white, // warna teks pada tombol
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10), // radius sudut tombol
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

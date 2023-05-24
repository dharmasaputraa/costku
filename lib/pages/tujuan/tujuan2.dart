import 'package:flutter/material.dart';

class BuatTujuan2 extends StatefulWidget {
  const BuatTujuan2({Key? key}) : super(key: key);
  // ignore: constant_identifier_names
  static const String Add = '/tambah';
  @override
  _BuatTujuan2State createState() => _BuatTujuan2State();
}

class _BuatTujuan2State extends State<BuatTujuan2> {
  final _formKey = GlobalKey<FormState>();

  String? _selectedTransactionType;

  String _kategori = 'Harian';
  final List<String> _listKategori = [
    'Harian',
    'Mingguan',
    'Bulanan',
    'Tahunan',
  ];

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
        margin: EdgeInsets.all(20),
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
                      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      child: Text('Atur Target'),
                    ),
                  ),
                ],
              ),
              //input nominal
              SizedBox(height: 20),
              Center(
                child: Text(
                  'Kapan Kamu ingin Mencapai Tujuan?',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedTransactionType = 'Pilih Tanggal';
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: _selectedTransactionType == 'Pilih Tanggal' ? Colors.blue : Colors.white,
                      border: Border.all(color: Color(0xFF0193DE)),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: Text('Pilih Tanggal'),
                  ),
                ),
                SizedBox(width: 10),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedTransactionType = 'Fleksibel';
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: _selectedTransactionType == 'Fleksibel' ? Colors.blue : Colors.white,
                      border: Border.all(color: Color(0xFF0193DE)),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: Text('Fleksibel'),
                  ),
                ),
                SizedBox(height: 20),
              ]),
              SizedBox(height: 20),
              Text(
                'Pilih Tanggal',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Kapan Target Tujuan Tercapai',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.text,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Tanggal harus diisi';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              Text(
                'Frekuensi',
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
                  hintText: 'Pilih Frekuensi Nabung',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Frekuensi harus dipilih';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10),
              Text(
                'Nominal Menabung',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
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
              ElevatedButton(
                onPressed: () {
                  // aksi yang ingin dilakukan saat tombol simpan ditekan
                },
                child: Text('Simpan'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  onPrimary: Colors.blue, // warna teks pada tombol
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

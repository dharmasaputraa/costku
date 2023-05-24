import 'package:costku/pages/transaksi/kategori.dart';
import 'package:flutter/material.dart';

DateTime? selectedDate;

void main() {
  runApp(AddTransactionForm());
}

class AddTransactionForm extends StatefulWidget {
  const AddTransactionForm({Key? key}) : super(key: key);
  static const String Add = '/tambah';
  @override
  _AddTransactionFormState createState() => _AddTransactionFormState();
}

class _AddTransactionFormState extends State<AddTransactionForm> {
  final _formKey = GlobalKey<FormState>();

  String? _selectedTransactionType;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0x00FFFFFF),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Color(0xFF0193DE),
          title: Text(
            'Tambah Transaksi',
            style: TextStyle(
              fontFamily: 'Montserrat',
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
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
        body: SingleChildScrollView(
          child: Container(
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
                            _selectedTransactionType = 'Pemasukan';
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: _selectedTransactionType == 'Pemasukan' ? Colors.blue : Colors.white,
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                          child: Text('Pemasukan'),
                        ),
                      ),
                      SizedBox(width: 10),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _selectedTransactionType = 'Pengeluaran';
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: _selectedTransactionType == 'Pengeluaran' ? Colors.blue : Colors.white,
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                          child: Text('Pengeluaran'),
                        ),
                      ),
                      SizedBox(width: 10),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _selectedTransactionType = 'Tabungan';
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: _selectedTransactionType == 'Tabungan' ? Colors.blue : Colors.white,
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                          child: Text('Tabungan'),
                        ),
                      ),
                    ],
                  ),
                  //input nominal
                  SizedBox(height: 20),
                  Text(
                    'Nominal',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Masukkan nominal',
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Nominal harus diisi';
                      }
                      return null;
                    },
                  ),
                  //input kategori
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Kategori',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextButton(
                        child: Text(
                          'Tambah',
                          style: TextStyle(fontWeight: FontWeight.normal),
                        ),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                            return const AddCategoryPage();
                          }));
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                      hintText: 'Pilih Kategori',
                      border: UnderlineInputBorder(),
                      //suffixIcon: Icon(Icons.arrow_drop_down),
                    ),
                    value: _selectedTransactionType,
                    items: <String>['Bahan Makanan', 'Bensin', 'Listrik'].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Kategori yang dipilih';
                      }
                      return null;
                    },
                    onChanged: (value) {
                      setState(() {
                        _selectedTransactionType = value;
                      });
                    },
                  ),
                  //input keuangan
                  SizedBox(height: 20),
                  Text(
                    'Sumber Keuangan',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                      hintText: 'Pilih Sumber Keuangan',
                      border: UnderlineInputBorder(),
                      //suffixIcon: Icon(Icons.arrow_drop_down),
                    ),
                    value: _selectedTransactionType,
                    items: <String>['Kas', 'Bank'].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Keuangan yang dipilih';
                      }
                      return null;
                    },
                    onChanged: (value) {
                      setState(() {
                        _selectedTransactionType = value;
                      });
                    },
                  ),
                  //input tanggal
                  SizedBox(height: 20),
                  Text(
                    'Tanggal',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                      hintText: 'Pilih Tanggal',
                      border: UnderlineInputBorder(),
                      //suffixIcon: Icon(Icons.arrow_drop_down),
                    ),
                    value: _selectedTransactionType,
                    items: <String>['Bahan Makanan', 'Bensin', 'Listrik'].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Kategori yang dipilih';
                      }
                      return null;
                    },
                    onChanged: (value) {
                      setState(() {
                        _selectedTransactionType = value;
                      });
                    },
                  ),
                  //Berulang setiap
                  SizedBox(height: 20),
                  Text(
                    'Berulang Setiap',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                      hintText: 'Pilih Periode',
                      border: UnderlineInputBorder(),
                      //suffixIcon: Icon(Icons.arrow_drop_down),
                    ),
                    value: _selectedTransactionType,
                    items: <String>['Sekali', 'Setiap Hari', 'Setiap Minggu', 'Setiap 2 Minggu', 'Setiap Bulan']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Periode';
                      }
                      return null;
                    },
                    onChanged: (value) {
                      setState(() {
                        _selectedTransactionType = value;
                      });
                    },
                  ),
                  //Berulang Hingga
                  SizedBox(height: 20),
                  Text(
                    'Berulang Hingga',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                      hintText: 'Pilih Waktu',
                      border: UnderlineInputBorder(),
                      //suffixIcon: Icon(Icons.arrow_drop_down),
                    ),
                    value: _selectedTransactionType,
                    items: <String>[
                      'Selamanya',
                      'Custom',
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Waktu Akhir';
                      }
                      return null;
                    },
                    onChanged: (value) {
                      setState(() {
                        _selectedTransactionType = value;
                      });
                    },
                  ),
                  //input Keterangan
                  SizedBox(height: 20),
                  Text(
                    'Nominal',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Isi deskripsi singkat',
                      border: UnderlineInputBorder(),
                    ),
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'deskripsi Singkat';
                      }
                      return null;
                    },
                  ),
                  //simpan
                  SizedBox(height: 20),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          // do something
                        }
                      },
                      child: Text('Tambah'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}

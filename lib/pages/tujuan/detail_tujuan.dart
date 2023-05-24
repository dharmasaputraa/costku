import 'package:flutter/material.dart';

class DetailTujuan extends StatefulWidget {
  const DetailTujuan({Key? key}) : super(key: key);
  // ignore: constant_identifier_names
  static const String Add = '/tambah';
  @override
  _DetailTujuanState createState() => _DetailTujuanState();
}

class _DetailTujuanState extends State<DetailTujuan> {
  final _formKey = GlobalKey<FormState>();

  String? _selectedTransactionType;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Color(0xFF0193DE),
        title: Text(
          'Tujuan Keuangan',
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
                        _selectedTransactionType = 'Aktif';
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: _selectedTransactionType == 'Aktif' ? Colors.blue : Colors.white,
                        border: Border.all(color: Color(0xFF0193DE)),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      child: Text('Aktif'),
                    ),
                  ),
                  SizedBox(width: 10),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _selectedTransactionType = 'Terkumpul';
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: _selectedTransactionType == 'Terkumpul' ? Colors.blue : Colors.white,
                        border: Border.all(color: Color(0xFF0193DE)),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      child: Text('Terkumpul'),
                    ),
                  ),
                  SizedBox(width: 10),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _selectedTransactionType = 'Berakhir';
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: _selectedTransactionType == 'Berakhir' ? Colors.blue : Colors.white,
                        border: Border.all(color: Color(0xFF0193DE)),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      child: Text('Berakhir'),
                    ),
                  ),
                ],
              ),
              //input nominal
              SizedBox(height: 20),
              Card(
                color: Color.fromARGB(255, 255, 255, 255),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.laptop,
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                          SizedBox(width: 8),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Laptop Razer',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 0, 0, 0),
                                  ),
                                ),
                                Text(
                                  '2 bulan lagi',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 0, 0, 0),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 8),
                          Text(
                            '75%',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      LinearProgressIndicator(value: 0.75),
                      SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text('0%', style: TextStyle(color: Color.fromARGB(255, 0, 0, 0))),
                          Text('100%', style: TextStyle(color: Color.fromARGB(255, 0, 0, 0))),
                        ],
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Rp 4.000.000 sampai Rp 5.000.000',
                        style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                      ),
                      Text(
                        'Terkumpul',
                        style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              Card(
                color: Color.fromARGB(255, 255, 255, 255),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.phone_android,
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                          SizedBox(width: 8),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Handphone',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 0, 0, 0),
                                  ),
                                ),
                                Text(
                                  '8 bulan lagi',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 0, 0, 0),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 8),
                          Text(
                            '0%',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      LinearProgressIndicator(value: 0),
                      SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text('0%', style: TextStyle(color: Color.fromARGB(255, 0, 0, 0))),
                          Text('100%', style: TextStyle(color: Color.fromARGB(255, 0, 0, 0))),
                        ],
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Rp 0 sampai Rp 2.000.000',
                        style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                      ),
                      Text(
                        'Terkumpul',
                        style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                      ),
                    ],
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

import 'package:flutter/material.dart';

DateTime? selectedDate;

void main() {
  runApp(AddCategoryForm());
}

class AddCategoryForm extends StatefulWidget {
  const AddCategoryForm({Key? key}) : super(key: key);
  static const String AddCategory = '/Tambah_Kategori';
  @override
  _AddTransactionFormState createState() => _AddTransactionFormState();
}

class _AddTransactionFormState extends State<AddCategoryForm> {
  final _formKey = GlobalKey<FormState>();

  String? _selectedTransactionType;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Tambah Kategori',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
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
              Center(
                child: Column(
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.category,
                        size: 50,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Pilih icon category',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              //input nominal
              SizedBox(height: 20),
              Text(
                'Nama Kategori',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Isi nama kategori',
                  border: UnderlineInputBorder(),
                ),
                keyboardType: TextInputType.text,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Nama Kategori';
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
    );
  }
}

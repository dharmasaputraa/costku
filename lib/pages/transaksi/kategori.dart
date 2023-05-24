import 'package:costku/pages/transaksi/tambah_kategori.dart';
import 'package:flutter/material.dart';

class AddCategoryPage extends StatelessWidget {
  const AddCategoryPage({Key? key}) : super(key: key);
  static const String AddCategory = '/add_category';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Kategori',
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
        padding: EdgeInsets.all(16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                  return const AddCategoryForm();
                }));
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle,
                ),
                padding: EdgeInsets.all(16),
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(width: 16),
            Text(
              'Tambah Kategori',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Anggaran extends StatefulWidget {
  const Anggaran({Key? key}) : super(key: key);
  static const nameRoute = '/anggaran';

  @override
  State<Anggaran> createState() => _AnggaranState();
}

class _AnggaranState extends State<Anggaran> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Anggaran')),
        body: Center(
          child: Text('Anggaran', style: TextStyle(fontSize: 40)),
        ));
    ;
  }
}

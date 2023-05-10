import 'package:flutter/material.dart';

class Tujuan extends StatefulWidget {
  const Tujuan({Key? key}) : super(key: key);

  @override
  State<Tujuan> createState() => _TujuanState();
}

class _TujuanState extends State<Tujuan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Tujuan')),
        body: Center(
          child: Text('Tujuan', style: TextStyle(fontSize: 40)),
        ));
    ;
  }
}

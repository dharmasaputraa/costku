import 'package:flutter/material.dart';

class Beranda extends StatefulWidget {
  const Beranda({Key? key}) : super(key: key);
  static const nameRoute = '/beranda';

  @override
  State<Beranda> createState() => _BerandaState();
}

class _BerandaState extends State<Beranda> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Beranda')),
        body: Center(
          child: Text('Beranda', style: TextStyle(fontSize: 40)),
        ));
  }
}

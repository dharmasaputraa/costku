// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:costku/pages/tujuan/detail_tujuan.dart';
import 'package:costku/pages/tujuan/tambah_tujuan.dart';
import 'package:costku/pages/tujuan/tujuan2.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Tujuan extends StatefulWidget {
  const Tujuan({Key? key}) : super(key: key);

  @override
  State<Tujuan> createState() => _TujuanState();
}

class _TujuanState extends State<Tujuan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF0193DE),
          automaticallyImplyLeading: false,
          elevation: 0,
          title: Align(
            alignment: Alignment.center,
            child: Text(
              'Tujuan Keuangan',
              style: TextStyle(
                fontFamily: 'Montserrat',
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
            child: SafeArea(
                child: Stack(children: [
          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: 430,
                height: 90,
                decoration: BoxDecoration(
                  color: Color(0xFF0193DE),
                ),
              ),
              Container(
                width: 430,
                height: 560,
                decoration: BoxDecoration(
                  color: Color(0xFFF4F6F8),
                ),
              ),
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Align(
                alignment: AlignmentDirectional(0, 0),
              ),
              SizedBox(height: 40),
              Container(
                width: 290,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(
                    color: Color(0xFFE2DFDF),
                    width: 1,
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 5),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Align(
                                        alignment: AlignmentDirectional(0, 0),
                                        child: Text(
                                          'Total Tabungan Kamu',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontFamily: 'Outfit',
                                            fontSize: 18,
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: AlignmentDirectional(0, 0),
                                        child: Padding(
                                          padding: EdgeInsetsDirectional.fromSTEB(0, 3, 0, 0),
                                          child: Text(
                                            'Rp 200.000',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontFamily: 'Outfit',
                                              color: Colors.black,
                                              fontSize: 25,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Container(
                width: 430,
                height: 600,
                decoration: BoxDecoration(
                  color: Color(0xFF0193DE),
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Tujuan',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextButton(
                            child: Text(
                              'Detail',
                              style: TextStyle(fontWeight: FontWeight.normal, color: Colors.white),
                            ),
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                                return const DetailTujuan();
                              }));
                            },
                          ),
                        ],
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
                                    Icons.laptop,
                                    color: Color.fromARGB(255, 0, 0, 0),
                                  ),
                                  SizedBox(width: 8),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
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
                                children: [
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
                                      children: [
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
                                children: [
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
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5, right: 5),
                        child: SizedBox(
                            width: double.infinity,
                            height: 50,
                            child: TextButton(
                                style: TextButton.styleFrom(backgroundColor: Colors.white),
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                                    return const BuatTujuan();
                                  }));
                                },
                                child: const Text(
                                  'Buat Tujuan',
                                  style: TextStyle(color: Colors.black),
                                ))),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ]))));
  }
}

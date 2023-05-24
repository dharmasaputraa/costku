import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TambahDompet extends StatefulWidget {
  const TambahDompet({Key? key}) : super(key: key);

  @override
  State<TambahDompet> createState() => _TambahDompetState();
}

class _TambahDompetState extends State<TambahDompet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF0193DE),
          automaticallyImplyLeading: true,
          elevation: 0,
          title: Align(
            alignment: AlignmentDirectional(-1, 0),
            child: Text(
              'Tambah Dompet',
              style: TextStyle(
                fontFamily: 'Montserrat',
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
        body: SafeArea(
            child: Stack(children: [
          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: 430,
                height: 260,
                decoration: BoxDecoration(
                  color: Color(0xFFF4F6F8),
                ),
              ),
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: 445,
                height: 20,
                decoration: BoxDecoration(),
              ),
              Container(
                width: 390,
                height: 270,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                  border: Border.all(
                    color: Color(0xFFE2DFDF),
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(-1, 0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 20, 0, 0),
                        child: Row(
                          children: [
                            Text(
                              'Nama Dompet',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontFamily: 'Outfit',
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          border: UnderlineInputBorder(),
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(-1, 0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 20, 0, 0),
                        child: Row(
                          children: [
                            Text(
                              'Jumalah Saldo',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontFamily: 'Outfit',
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          border: UnderlineInputBorder(),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 25),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFF0193DE),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 150, vertical: 15),
                        ),
                        child: Text(
                          'Simpan',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ])));
  }
}

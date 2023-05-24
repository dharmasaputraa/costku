import 'package:costku/pages/transaksi/transaksi.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(1.0),
          child: AppBar(
            backgroundColor: Color(0xFF0193DE),
            automaticallyImplyLeading: false,
            elevation: 0,
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
                height: 262,
                decoration: BoxDecoration(
                  color: Color(0xFF0193DE),
                ),
              ),
              Container(
                width: 430,
                height: 735,
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
                width: 1000,
                height: 77,
                decoration: BoxDecoration(
                  color: Color(0x00FFFFFF),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                      child: Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.person,
                          color: Color(0xFF8A8A8A),
                          size: 24,
                        ),
                      ),
                    ),
                    Container(
                      width: 283,
                      height: 100,
                      decoration: BoxDecoration(),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(-1, 0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                              child: Text(
                                'Halo, Dharma Saputra',
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(-1, 0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                              child: Text(
                                'Selamat Sore',
                                style: TextStyle(
                                  fontFamily: 'Outfit',
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0, 0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 20, 20, 0),
                        child: Container(
                          width: 50,
                          height: 80,
                          decoration: BoxDecoration(),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                            child: IconButton(
                              icon: FaIcon(
                                FontAwesomeIcons.solidBell,
                                color: Colors.white,
                                size: 22,
                              ),
                              onPressed: () {
                                print('IconButton pressed ...');
                              },
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 390,
                height: 170,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(
                    color: Color(0xFFE2DFDF),
                    width: 1,
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: 780,
                      height: 85,
                      decoration: BoxDecoration(),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            width: 444,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Colors.white,
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(-1, 0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                                      child: Text(
                                        'Pengeluaran bulan ini',
                                        style: TextStyle(),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: 498,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Colors.white,
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(-1, 0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                                    child: Text(
                                      'Rp 1.900.000',
                                      style: TextStyle(
                                        fontFamily: 'Outfit',
                                        fontSize: 26,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                                  child: Container(
                                    width: 100,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                    ),
                                    alignment: AlignmentDirectional(-1, 0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Icon(
                                          Icons.arrow_downward_sharp,
                                          color: Color(0xFFFF0000),
                                          size: 15,
                                        ),
                                        Text(
                                          '95%',
                                          style: TextStyle(
                                            fontFamily: 'Outfit',
                                            color: Color(0xFFFF0000),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 472,
                      height: 70,
                      decoration: BoxDecoration(),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            width: 150,
                            height: 100,
                            decoration: BoxDecoration(
                              color: Colors.white,
                            ),
                            child: Align(
                              alignment: AlignmentDirectional(-1, 0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Align(
                                      alignment: AlignmentDirectional(-1, 0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 3),
                                        child: Text(
                                          'Total saldo',
                                          style: TextStyle(),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(-1, 0),
                                      child: Text(
                                        'Rp 100.000',
                                        style: TextStyle(
                                          fontFamily: 'Outfit',
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: 130,
                            height: 100,
                            decoration: BoxDecoration(
                              color: Colors.white,
                            ),
                            child: Align(
                              alignment: AlignmentDirectional(-1, 0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(-1, 0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 3),
                                      child: Text(
                                        'Tabungan',
                                        style: TextStyle(),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(-1, 0),
                                    child: Text(
                                      'Rp 0',
                                      style: TextStyle(
                                        fontFamily: 'Outfit',
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: 95,
                            height: 100,
                            decoration: BoxDecoration(
                              color: Colors.white,
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 20, 0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(-1, 0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 4),
                                      child: Text(
                                        'Dompet',
                                        style: TextStyle(),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(-1, 0),
                                    child: Text(
                                      '2 ',
                                      style: TextStyle(
                                        fontFamily: 'Outfit',
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
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
                  ],
                ),
              ),
              Container(
                width: 445,
                height: 30,
                decoration: BoxDecoration(),
              ),
              Container(
                width: 390,
                height: 675,
                decoration: BoxDecoration(
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
                        padding: EdgeInsetsDirectional.fromSTEB(20, 10, 12, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Riwayat Transaksi',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontFamily: 'Outfit',
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextButton(
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                                    return Transaksi();
                                  }));
                                },
                                child: Text('Detail'))
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                      child: Container(
                        width: 390,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 15, 0),
                              child: FaIcon(
                                FontAwesomeIcons.wallet,
                                color: Colors.red,
                                size: 25,
                              ),
                            ),
                            Container(
                              width: 185,
                              height: 100,
                              decoration: BoxDecoration(
                                color: Colors.white,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(-1, 0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                                      child: Text(
                                        'Beli Trek',
                                        style: TextStyle(
                                          fontFamily: 'Outfit',
                                          color: Color(0xFF020000),
                                          fontSize: 14,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(-1, 0),
                                    child: Text(
                                      '3 Mei 2023',
                                      style: TextStyle(
                                        fontFamily: 'Outfit',
                                        fontWeight: FontWeight.w300,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 20, 0),
                              child: Container(
                                width: 117,
                                height: 100,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Align(
                                      alignment: AlignmentDirectional(1, 0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                                        child: Text(
                                          '- Rp 900.000',
                                          textAlign: TextAlign.end,
                                          style: TextStyle(
                                            fontFamily: 'Outfit',
                                            color: Colors.red,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(1, 0),
                                      child: Text(
                                        'Dompetku',
                                        style: TextStyle(
                                          fontFamily: 'Outfit',
                                          fontWeight: FontWeight.w300,
                                          fontSize: 12,
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
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 30, left: 30),
                      child: Divider(
                        thickness: 1,
                        color: Color(0xFFC2C0C0),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                      child: Container(
                        width: 390,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 15, 0),
                              child: FaIcon(
                                FontAwesomeIcons.wallet,
                                color: Color(0xFF0193DE),
                                size: 25,
                              ),
                            ),
                            Container(
                              width: 185,
                              height: 100,
                              decoration: BoxDecoration(
                                color: Colors.white,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(-1, 0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                                      child: Text(
                                        'Dapet uang dari emak',
                                        style: TextStyle(
                                          fontFamily: 'Outfit',
                                          color: Color(0xFF020000),
                                          fontSize: 14,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(-1, 0),
                                    child: Text(
                                      '2 Mei 2023',
                                      style: TextStyle(
                                        fontFamily: 'Outfit',
                                        fontWeight: FontWeight.w300,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 20, 0),
                              child: Container(
                                width: 117,
                                height: 100,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Align(
                                      alignment: AlignmentDirectional(1, 0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                                        child: Text(
                                          '+ Rp 1.000.000',
                                          textAlign: TextAlign.end,
                                          style: TextStyle(
                                            fontFamily: 'Outfit',
                                            color: Color(0xFF0193DE),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(1, 0),
                                      child: Text(
                                        'Dompetku',
                                        style: TextStyle(
                                          fontFamily: 'Outfit',
                                          fontWeight: FontWeight.w300,
                                          fontSize: 12,
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
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 30, left: 30),
                      child: Divider(
                        thickness: 1,
                        color: Color(0xFFC2C0C0),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                      child: Container(
                        width: 390,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 15, 0),
                              child: FaIcon(
                                FontAwesomeIcons.wallet,
                                color: Colors.red,
                                size: 25,
                              ),
                            ),
                            Container(
                              width: 185,
                              height: 100,
                              decoration: BoxDecoration(
                                color: Colors.white,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(-1, 0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                                      child: Text(
                                        'Beli diamond Genshin',
                                        style: TextStyle(
                                          fontFamily: 'Outfit',
                                          color: Color(0xFF020000),
                                          fontSize: 14,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(-1, 0),
                                    child: Text(
                                      '1 Mei 2023',
                                      style: TextStyle(
                                        fontFamily: 'Outfit',
                                        fontWeight: FontWeight.w300,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 20, 0),
                              child: Container(
                                width: 117,
                                height: 100,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Align(
                                      alignment: AlignmentDirectional(1, 0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                                        child: Text(
                                          '- Rp 500.000',
                                          textAlign: TextAlign.end,
                                          style: TextStyle(
                                            fontFamily: 'Outfit',
                                            color: Colors.red,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(1, 0),
                                      child: Text(
                                        'BCA',
                                        style: TextStyle(
                                          fontFamily: 'Outfit',
                                          fontWeight: FontWeight.w300,
                                          fontSize: 12,
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
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 30, left: 30),
                      child: Divider(
                        thickness: 1,
                        color: Color(0xFFC2C0C0),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                      child: Container(
                        width: 390,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 15, 0),
                              child: FaIcon(
                                FontAwesomeIcons.wallet,
                                color: Color(0xFF0193DE),
                                size: 25,
                              ),
                            ),
                            Container(
                              width: 185,
                              height: 100,
                              decoration: BoxDecoration(
                                color: Colors.white,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(-1, 0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                                      child: Text(
                                        'THR',
                                        style: TextStyle(
                                          fontFamily: 'Outfit',
                                          color: Color(0xFF020000),
                                          fontSize: 14,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(-1, 0),
                                    child: Text(
                                      '1 Mei 2023',
                                      style: TextStyle(
                                        fontFamily: 'Outfit',
                                        fontWeight: FontWeight.w300,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 20, 0),
                              child: Container(
                                width: 117,
                                height: 100,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Align(
                                      alignment: AlignmentDirectional(1, 0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                                        child: Text(
                                          '+ Rp 500.000',
                                          textAlign: TextAlign.end,
                                          style: TextStyle(
                                            fontFamily: 'Outfit',
                                            color: Color(0xFF0193DE),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(1, 0),
                                      child: Text(
                                        'BCA',
                                        style: TextStyle(
                                          fontFamily: 'Outfit',
                                          fontWeight: FontWeight.w300,
                                          fontSize: 12,
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
                    ),
                  ],
                ),
              ),
            ],
          ),
        ]))));
  }
}

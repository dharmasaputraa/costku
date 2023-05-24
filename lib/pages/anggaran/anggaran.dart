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
      backgroundColor: Color(0xFFF4F6F8),
      appBar: AppBar(
        title: Text('Anggaran'),
        automaticallyImplyLeading: false,
        actions: [],
        centerTitle: false,
        elevation: 0,
      ),
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: 441,
              height: 538,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                    child: Container(
                      width: 390,
                      height: 140,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Color(0xFFE2DFDF),
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            width: 403,
                            height: 68,
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                                  child: Container(
                                    width: 35,
                                    height: 35,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF0193DE),
                                      shape: BoxShape.circle,
                                    ),
                                    child: Icon(
                                      Icons.local_gas_station,
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 249,
                                  height: 100,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Align(
                                        alignment: AlignmentDirectional(-1, 0),
                                        child: Padding(
                                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 3),
                                          child: Text(
                                            'Bensin - Kendaraan',
                                            style: TextStyle(
                                              fontFamily: 'Montserrat',
                                              color: Colors.black,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: AlignmentDirectional(-1, 0),
                                        child: Text(
                                          'Bulanan, 1 May 23 - 31 May 23',
                                          style: TextStyle(
                                            fontFamily: 'Open Sans',
                                            color: Colors.black,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w300,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                IconButton(
                                  icon: Icon(
                                    Icons.keyboard_arrow_right,
                                    color: Colors.black,
                                    size: 30,
                                  ),
                                  onPressed: () {
                                    print('IconButton pressed ...');
                                  },
                                ),
                              ],
                            ),
                          ),
                          Divider(
                            height: 1,
                            thickness: 1,
                            color: Color(0xFFE2DFDF),
                          ),
                          Container(
                            width: 459,
                            height: 68,
                            decoration: BoxDecoration(
                              color: Colors.white,
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  width: 190,
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
                                          padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 3),
                                          child: Text(
                                            'Anggaran',
                                            style: TextStyle(
                                              fontFamily: 'Open Sans',
                                            ),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: AlignmentDirectional(-1, 0),
                                        child: Padding(
                                          padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                                          child: Text(
                                            'Rp 100.000',
                                            style: TextStyle(fontFamily: 'Open Sans', color: Colors.blue),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 195,
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
                                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 20, 3),
                                          child: Text(
                                            'Sisa',
                                            style: TextStyle(
                                              fontFamily: 'Open Sans',
                                            ),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: AlignmentDirectional(1, 0),
                                        child: Padding(
                                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 20, 0),
                                          child:
                                              Text('Rp 100.000', style: TextStyle(fontFamily: 'Open Sans', color: Colors.blue)),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
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
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}

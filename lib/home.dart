import 'package:costku/pages/anggaran.dart';
import 'package:costku/pages/beranda.dart';
import 'package:costku/pages/transaksi.dart';
import 'package:costku/pages/tujuan.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currenTab = 0;
  final List<Widget> screens = [Beranda(), Transaksi(), Anggaran(), Tujuan()];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currenScreen = Beranda();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: currenScreen,
        bucket: bucket,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currenScreen = Beranda();
                        currenTab = 0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.home,
                          color: currenTab == 0 ? Colors.blue : Colors.grey,
                        ),
                        Text(
                          "Beranda",
                          style: TextStyle(color: currenTab == 0 ? Colors.blue : Colors.grey),
                        )
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currenScreen = Transaksi();
                        currenTab = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.note,
                          color: currenTab == 1 ? Colors.blue : Colors.grey,
                        ),
                        Text(
                          "Transaksi",
                          style: TextStyle(color: currenTab == 1 ? Colors.blue : Colors.grey),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currenScreen = Anggaran();
                        currenTab = 3;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.wallet_giftcard,
                          color: currenTab == 3 ? Colors.blue : Colors.grey,
                        ),
                        Text(
                          "Anggaran",
                          style: TextStyle(color: currenTab == 3 ? Colors.blue : Colors.grey),
                        )
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currenScreen = Tujuan();
                        currenTab = 4;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.flag,
                          color: currenTab == 4 ? Colors.blue : Colors.grey,
                        ),
                        Text(
                          "Tujuan",
                          style: TextStyle(color: currenTab == 4 ? Colors.blue : Colors.grey),
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Pengingat extends StatelessWidget {
  const Pengingat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Pengingat Pembayaran')),
        body: const Center(
          child: RadioExample(),
        ),
      ),
    );
  }
}

bool _isCheckedWifi = false;
bool _isCheckedHutang = false;

class RadioExample extends StatefulWidget {
  const RadioExample({Key? key}) : super(key: key);
  @override
  State<RadioExample> createState() => _RadioExampleState();
}

class _RadioExampleState extends State<RadioExample> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          title: Padding(
            padding: const EdgeInsets.only(top: 20.0, left: 13.0),
            child: Row(
              children: [
                Container(
                  width: 20.0,
                  height: 20.0,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blue,
                  ),
                  child: const Icon(
                    Icons.add,
                    size: 10,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(width: 8.0),
                const Text('Tambah Pengingat Pembayaran'),
              ],
            ),
          ),
        ),
        ListTile(
          title: const Padding(
            padding: EdgeInsets.only(top: 25.0, bottom: 5),
            child: Text('Bayar Wifi'),
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('4 Mei 2023'),
              const SizedBox(height: 8),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(4.0),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
                child: const Text(
                  'Ingat untuk membayar Wifi',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ),
            ],
          ),
          leading: Checkbox(
              value: _isCheckedWifi,
              onChanged: (bool? value) {
                setState(() {
                  _isCheckedWifi = value!;
                });
              }),
        ),
        ListTile(
          title: const Padding(
            padding: EdgeInsets.only(top: 25.0, bottom: 5),
            child: Text('Bayar Hutang Dharma'),
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('31 Mei 2023'),
              const SizedBox(height: 8),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(4.0),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
                child: const Text(
                  'Ingat hutang dharma',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ),
            ],
          ),
          leading: Checkbox(
              value: _isCheckedHutang,
              onChanged: (bool? value) {
                setState(() {
                  _isCheckedHutang = value!;
                });
              }),
        ),
      ],
    );
  }
}

import 'package:costku/home.dart';
import 'package:costku/pages/auth/login_form.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const LoginPage());
}

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);
  static const nameRoute = '/login';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Costku',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Costku',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Manajemen keuangan terbaik untukmu',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 32),
            Image.asset(
              'assets/6573.png',
              width: 300,
            ),
            const SizedBox(height: 50),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                onPrimary: Colors.white,
                minimumSize: Size(double.infinity, 50),
              ),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                  return const LoginForm();
                }));
              },
              child: const Text('Masuk'),
            ),
            const SizedBox(height: 16),
            Container(
              height: 1,
              color: Colors.grey[300],
            ),
            const SizedBox(height: 16),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                onPrimary: Colors.black,
                minimumSize: Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              onPressed: () {},
              icon: const Icon(Icons.login_rounded),
              label: const Text('Masuk dengan Google'),
            ),
            const SizedBox(height: 16),
            const Text(
              'Belum Punya Akun? Daftar',
              style: TextStyle(
                fontSize: 16,
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

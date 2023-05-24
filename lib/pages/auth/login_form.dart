import 'package:costku/home.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Image.asset(
                'assets/6573.png',
                height: size.height * 0.2,
              ),
              SizedBox(
                height: 10,
              ),
              const Text(
                'Selamat datang,',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              const Text(
                'Kelola uangmu dengan mudah dan efisien.',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Form(
                  child: Container(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextFormField(
                        decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.person_outline_outlined),
                            labelText: 'E-mail',
                            hintText: 'E-Mail',
                            border: OutlineInputBorder())),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                        decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.fingerprint),
                            labelText: 'Password',
                            hintText: 'Password',
                            border: OutlineInputBorder(),
                            suffixIcon: IconButton(
                              onPressed: null,
                              icon: Icon(Icons.remove_red_eye_sharp),
                            ))),
                    const SizedBox(
                      height: 10,
                    ),
                    Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                            onPressed: () {
                              ;
                            },
                            child: const Text('Forget Password?'))),
                    SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                                return const Home();
                              }));
                            },
                            child: const Text('Login'))),
                    SizedBox(
                      height: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text("OR"),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          width: double.infinity,
                          height: 50,
                          child: OutlinedButton.icon(
                            onPressed: () {},
                            icon: const Icon(
                              FontAwesomeIcons.google,
                              size: 20,
                              color: Colors.black,
                            ),
                            label: Text(
                              'Sign-in with Google',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ))
            ],
          ),
        ),
      ),
    ));
  }
}

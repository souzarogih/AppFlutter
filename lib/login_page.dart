import 'package:flutter/material.dart';
import 'package:ola_mundo/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPAgeState();
}

class _LoginPAgeState extends State<LoginPage> {
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 200,
                  height: 200,
                  child: Image.network(
                      'https://static.wixstatic.com/media/0784b1_18c5cd77477745979c1555f37db576df~mv2.png/v1/fill/w_270,h_262,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/All_Logos_01.png'),
                ),
                Container(height: 30),
                TextField(
                  onChanged: (text) {
                    email = text;
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      labelText: 'Email', border: OutlineInputBorder()),
                ),
                SizedBox(height: 10),
                TextField(
                  onChanged: (text) {
                    password = text;
                  },
                  obscureText: true,
                  decoration: InputDecoration(
                      labelText: 'Password', border: OutlineInputBorder()),
                ),
                SizedBox(height: 15),
                ElevatedButton(
                  onPressed: () {
                    if (email == 'higorsand@gmail.com' && password == '123') {
                      Navigator.of(context).pushReplacementNamed('/home');
                    } else {
                      print('Login inválido');
                    }
                  },
                  child: Text(
                      'Entrar'), //Futuramente incluir aqui o envio de log para uma api
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

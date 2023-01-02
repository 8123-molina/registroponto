import 'package:flutter/material.dart';
import 'package:registroponto/pages/home_page.dart';
import 'package:registroponto/pages/rec_senha_page.dart';
import 'package:registroponto/splash_screen.dart';

import '../components/button_components.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(0.0),
            child: SingleChildScrollView(
              child: Column(
                children: <Widget> [
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.blue, 
                      borderRadius: BorderRadius.only(bottomRight: Radius.circular(50)),
                    ),
                    height: 350,
                    width: double.infinity,  
                    child: const Icon(
                      Icons.account_circle_sharp,
                      color: Colors.white,
                      size:160,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:50.0, top: 60.0, right:50, bottom:0),
                    child: Column(
                      children: const <Widget> [
                        TextField(
                          decoration:InputDecoration(
                            icon: Icon(Icons.person),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                            ),
                            hintText: 'Login',
                          ),
                        ),
                        SizedBox(height: 16,),
                        TextField(
                          decoration:InputDecoration(
                            icon: Icon(Icons.lock),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                            ),
                            hintText: 'Senha',
                          ),
                        ),
                    ],
                  ),
                  ),
                  Padding(
                    padding:  const EdgeInsets.all(16.0),
                    child: ElevatedButton(
                      style: raisedButtonStyle,
                      onPressed: () { 
                        Navigator.push(context, MaterialPageRoute(builder:(__) => const HomePage()));
                      },
                      child: const Text('Login',
                        style:TextStyle(
                          fontSize: 24,
                          color: Colors.white),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (__) => const RecSenhaPage()));
                      },
                      child: const Text('Recuperar senha'),),
                  ),
                ],
              ),
            ),
          ),
    );
  }
}

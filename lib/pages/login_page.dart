import 'package:flutter/material.dart';
import 'package:registroponto/pages/rec_senha_page.dart';

import '../commons/const/colors_const.dart';
import '../components/button_components.dart';
import 'index_page.dart';

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
                      color: corPrimary, 
                      borderRadius: BorderRadius.only(bottomRight: Radius.circular(150)),
                    ),
                    height: 350,
                    width: double.infinity,  
                    child: const Icon(
                      Icons.bike_scooter,
                      color: corSecundary,
                      size:160,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:50.0, top: 60.0, right:50, bottom:0),
                    child: Column(
                      children: const <Widget> [
                        TextField(
                          decoration:InputDecoration(
                            fillColor: corPrimary,
                            prefixIcon: Icon(Icons.person),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                            ),
                            hintText: 'Login',
                          ),
                        ),
                        SizedBox(height: 16,),
                        TextField(
                          decoration:InputDecoration(
                            fillColor: corPrimary,
                            prefixIcon: Icon(Icons.lock),
                            prefixIconColor: corSecundary,
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
                        Navigator.push(context, MaterialPageRoute(builder:(__) => const IndexPage()));
                      },
                      child: const Text('Login',
                        style:TextStyle(
                          fontSize: 24,
                          color: corSecundary),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (__) => const RecSenhaPage()));
                      },
                      child: const Text('Recuperar senha',
                        style: TextStyle(color: corPrimary),
                        ),),
                  ),
                ],
              ),
            ),
          ),
    );
  }
}

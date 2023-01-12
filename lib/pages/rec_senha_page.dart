import 'package:flutter/material.dart';

import 'home_page.dart';

class RecSenhaPage extends StatefulWidget {

  const RecSenhaPage({ Key? key }) : super(key: key);

  @override
  State<RecSenhaPage> createState() => _RecSenhaPageState();
}

class _RecSenhaPageState extends State<RecSenhaPage> {

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: const Text('Recuperar senha'),),
           body: Center(
             child: ElevatedButton(child: const Text('Home'),
             onPressed: () {
               Navigator.push(context, MaterialPageRoute(builder: (__) => const HomePage()));
             },)
           ),
       );
  }
}
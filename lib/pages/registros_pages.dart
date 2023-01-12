
import 'package:flutter/material.dart';

class RegistroPage extends StatefulWidget {
  const RegistroPage({Key? key}) : super(key: key);

  @override
  State<RegistroPage> createState() => _RegistroPageState();
}

class _RegistroPageState extends State<RegistroPage> {
  final dataAtual = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex:2,
              child: SizedBox(
                width: double.infinity,
                height: 120,
                child: Card(
                  child:Center(
                    child: Text('$dataAtual'),
                  ),
                ),
              ),
            ),
            Expanded(
              flex:10,
              child: ListView.separated(
                shrinkWrap: true,
                itemBuilder: ((context, index) {
                  return const ListTile(
                    title: Text('Produtos'),
                    trailing: Icon(Icons.chevron_right),
                  );
                }),
                separatorBuilder: (__,_) => const Divider(), 
                itemCount: 50,),
            ),
            Expanded(
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  child: const Text('Adicionar ponto'),
                  onPressed: () => registrar(),
                ),
              ),
            ),
          ],
        ),
    );
  }
  
  registrar() {
    showDialog(
      context: context, 
      builder: (_)=> AlertDialog(
            title: const Text('Adicionar registro ponto'),
            elevation:24.0,
            content: SingleChildScrollView(
              child: ListBody(
                children: const <Widget>[
                  Text('Deseja registrar o ponto?'),
                  Icon(
                    Icons.app_registration,
                    size: 60,
                  ),
                ],
              ),
            ),
            actions: [
              TextButton(
              onPressed: () => Navigator.pop(context, 'Cancel'),
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context, 'OK'),
              child: const Text('OK'),
            ),
            ],
          ),
    );
  }
}
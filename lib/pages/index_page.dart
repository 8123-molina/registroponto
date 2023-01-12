
import 'package:flutter/material.dart';
import 'package:registroponto/commons/const/colors_const.dart';

import 'home_page.dart';
import 'perfil_page.dart';
import 'registros_pages.dart';


class IndexPage extends StatefulWidget {

  const IndexPage({ Key? key }) : super(key: key);

  @override
  State<IndexPage> createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {

  int index = 0;

  final screens = [       
    const HomePage(),
    const RegistroPage(),
    const PerfilPage(),
  ];

   @override
   Widget build(BuildContext context) {

    // final items = [
    //   const Icon(Icons.home, size: 30,semanticLabel:'Home'),
    //   const Icon(Icons.list, size: 30,semanticLabel:'Registro'),
    //   const Icon(Icons.perm_identity, size: 30, semanticLabel: 'Perfil',),
    // ];

    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return corPrimary;
    }
       return SafeArea(
           child: Scaffold(
              backgroundColor: Colors.grey[100],
              bottomNavigationBar: BottomNavigationBar(
                onTap: (index) => setState(() => this.index = index),
                items: const <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.list),
                    label: 'Registros',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.person_rounded),
                    label: 'Perfil',
                  ),
                ],
                selectedItemColor: corPrimary,
                currentIndex: 0,
              ),
              body: screens[index],
          ),
      );
  }
} 
import 'package:flutter/material.dart';
import 'package:registroponto/pages/registros_pages.dart';

class HomePage extends StatefulWidget {

  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: const Text('Home'),),
           body: Container(
            child: Column(
              children: [
                CalendarDatePicker(
                  currentDate: null , 
                  firstDate: DateTime.utc(2020), 
                  initialDate: DateTime.now(), 
                  lastDate: DateTime.utc(2100), 
                  onDateChanged: (DateTime value) {  },
                ),
                Center(
                  child: ElevatedButton(
                    child: Text('Registro'),
                    onPressed:() {

                      Navigator.push(context, MaterialPageRoute(builder: (__) => const RegistroPage()));
                    }, 
                  ),
                ),
              ],
            ),
          ),
       );
  }
}
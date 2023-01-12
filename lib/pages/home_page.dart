

import 'package:flutter/material.dart';
import 'package:registroponto/commons/const/colors_const.dart';

class HomePage extends StatefulWidget {

  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final dataAtual = DateTime.now();
  bool user = false;


  avatar(){
    if(user){
      return const CircleAvatar();
    }else{
      return  const Icon( Icons.account_circle, size:100, color: corSecundary,);
    }
  }
  @override
  void selectDate (value) {
    var dateSelected = value.toString();
    final resp = dateSelected.split(' ');
    print(resp[2]);

  }

   @override
   Widget build(BuildContext context) {
       return Column(
                children: [
                  Card(
                    color: corPrimary,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children:[
                        avatar(),
                        Padding(
                          padding:  const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                            Text(
                                'Jorge BenJor',
                                style:  TextStyle(
                                fontSize: 25,
                                color: corSecundary,
                            ),),
                            Text('Número registro: 007',
                                style:  TextStyle(
                                fontSize: 12,
                                color: corSecundary,
                            ),),
                            Text('Função: Cantor',
                                textAlign: TextAlign.right,
                                style:  TextStyle(
                                fontSize: 12,
                                color: corSecundary,
                            ),),
                            Text('Carga horária: 08:00 ás 18:00',
                                textAlign: TextAlign.start,
                                style:  TextStyle(
                                fontSize: 12,
                                color: corSecundary,
                            ),),
                          ]),
                        )
                      ],
                    ),
                  ),
                  Card(
                    child: CalendarDatePicker(
                      currentDate: null , 
                      firstDate: DateTime.utc(2020), 
                      initialDate: dataAtual, 
                      lastDate: DateTime.utc(2100), 
                      onDateChanged: (DateTime value) { selectDate(value);},
                    ),
                  ),
                  Expanded(
                    flex: 8,
                    child: Card(
                      child: ListView.separated(
                        shrinkWrap: true,
                        itemBuilder: ((context, index) {
                          return SizedBox(
                                height:60,
                                child: Column(
                                  children: [
                                    Row(children:  [
                                      const Icon(Icons.brightness_2, size: 40),
                                      Text('teste'),
                                      Text(dataAtual.toString()),
                                    ],)
                                  ],
                                ),
                              );
                        }),
                        separatorBuilder: (__,_) => const Divider(), 
                        itemCount: 4,
                      ),
                    ),
                  ),
                ],
      );
  }
} 
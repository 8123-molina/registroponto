import 'package:dio/dio.dart';

import '../models/dados_models.dart';

/// More examples see https://github.com/flutterchina/dio/tree/master/example

class WsGetInit {
  
  var dio = Dio();
  // ignore: void_checks

  Future<List<Dados>> consultaDados() async{
    var lstRes = <Dados> [];

    Response response = await dio.get('http://makeup-api.herokuapp.com/api/v1/products.json');
    var data =  response.data['data'];
    // if( data == null || data.length == 0)
    //   lstRes = 'Não retornou resultado' as List<Dados>;
    // else 
    //   lstRes = (response.data["data"] as List)
    //   .map((e) => Dados.fromMap(e, formatDateTime: true)
    //   .toString()).cast<Dados>()  
    return data;
  }
}
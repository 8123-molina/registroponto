import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:registroponto/models/user_model.dart';
import 'package:registroponto/repository/i_repository.dart';
import 'package:http/http.dart' as http;

class UserHttpRepository implements IUserRepository{

  get url => 'http://makeup-api.herokuapp.com/api/v1/products.json';

  @override
  Future<List<UserModel>> findAllUsers() async {
    final response = await http.get(url);
    final List<dynamic> responseMap = jsonDecode(response.body);
    if (kDebugMode) {
      print(responseMap);
    }
    return responseMap.map<UserModel>((resp) => UserModel.fromMap(resp)).toList();
  }


}
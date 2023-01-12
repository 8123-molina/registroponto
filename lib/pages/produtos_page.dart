import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import '../controller/http_controller.dart';
import '../models/user_model.dart';

class HttpPage extends GetView<HttpController>{
  // const HttpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Http'),),
      body: controller.obx((state) {
          return ListView.builder(
            itemCount: state.length,
            itemBuilder: (_, index) {
              final UserModel item = state[index];
              return ListTile(
                title:Text(item.name),
              );
            },
          );
        }, 
        onError:(error) {
          return Column(
            children: [
               Text(error!),
               TextButton(
               onPressed: () => controller.findUsers,
               child: const Text('Tentar novamente'),
               )
            ],
          );
        }
      )
    );
  }
}
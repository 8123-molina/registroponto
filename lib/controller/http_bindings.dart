import 'package:get/get.dart';
import 'package:registroponto/controller/http_controller.dart';
import 'package:registroponto/webservice/http_repository.dart';

import '../repository/i_repository.dart';

class HttpBindings implements Bindings {
  @override
  void dependencies() {
    Get.put<IUserRepository>(UserHttpRepository());
    Get.put(HttpController(Get.find()));
  }
}
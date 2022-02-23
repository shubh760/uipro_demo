import 'package:get/get.dart';
import 'package:vayus_assignment/controllers/controller.dart';

class ControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<Controller>(Controller());
  }
}

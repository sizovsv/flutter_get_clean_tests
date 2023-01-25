import 'package:get/get.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  final _count = 0.obs;

  get count => _count.value;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => _count.value++;
  void decrement() => _count.value--;
}

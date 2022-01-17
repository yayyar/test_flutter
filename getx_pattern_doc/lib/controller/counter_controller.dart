import 'package:get/get.dart';

class CounterController extends GetxController {
  final _num = 0.obs;
  get num => _num.value;
  set num(value) => _num.value = value;

  increment() => num++;

  decrement() => num--;
}

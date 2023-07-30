import 'package:get/get.dart';

class CounterPageController {
  RxInt a = 0.obs;
  RxInt b = 0.obs;
  RxInt c = 0.obs;
  int get sumA => a.value;
  int get sumAB => a.value + b.value;
  int get sumABC => a.value + b.value + c.value;

  int getA() {
    return sumA;
  }

  int getAB() {
    return sumAB;
  }

  int getABC() {
    return sumABC;
  }

  void incrementABC() {
    a++;
    b++;
    c++;
  }

  void incrementBC() {
    b++;
    c++;
  }

  void incrementC() {
    c++;
  }
}

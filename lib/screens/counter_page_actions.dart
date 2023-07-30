import 'counter_page_controller.dart';

class CounterPageActions {
  CounterPageController controller = CounterPageController();

  int getA() => controller.getA();
  int getAB() => controller.getAB();
  int getABC() => controller.getABC();

  void incrementABC() => controller.incrementABC();
  void incrementBC() => controller.incrementBC();
  void incrementC() => controller.incrementC();
}

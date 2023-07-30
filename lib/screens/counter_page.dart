import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'counter_page_actions.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    var actions = GetIt.I.get<CounterPageActions>();
    return Scaffold(
      appBar: AppBar(
        title: Text('triple counter'),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Obx(() {
                var num = actions.getA();
                print(num);
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('A: $num'),
                );
              }),
              Obx(() {
                var num = actions.getAB();
                print(num);
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('AB: $num'),
                );
              }),
              Obx(() {
                var num = actions.getABC();
                print(num);
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('ABC: $num'),
                );
              }),
            ],
          ),
          Row(
            children: [
              TextButton(
                  onPressed: () {
                    actions.incrementABC();
                  },
                  child: Text('ABC: ')),
              TextButton(
                  onPressed: () {
                    actions.incrementBC();
                  },
                  child: Text('BC: ')),
              TextButton(
                  onPressed: () {
                    actions.incrementC();
                  },
                  child: Text('C: ')),
            ],
          )
        ],
      ),
    );
  }
}

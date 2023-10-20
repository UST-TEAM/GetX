import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final CounterController controller = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: GetBuilder<CounterController>(
          builder: (controller) {
            return Text(
              'Current count: ${controller.count}',
              style: TextStyle(fontSize: 20),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => controller.increment(),
        child: Icon(Icons.add),
      ),
    );
  }
}

class CounterController extends GetxController {
  int count = 0;

  void increment() {
    count++;
    update();
  }
}

class SecondPage extends StatelessWidget {
  final CounterController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      body: Center(
        child: Text(
          'Current count: ${controller.count}',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}


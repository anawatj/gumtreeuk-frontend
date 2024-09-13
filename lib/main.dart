import 'package:flutter/material.dart';
import 'package:gumtreeuk/car_controller.dart';
import 'package:gumtreeuk/car_list_view.dart';

void main() async {
  final CarListController controller = CarListController();
  await controller.searchCar();
  runApp(MyApp(controller));
}

class MyApp extends StatelessWidget {
  CarListController controller;

  MyApp(this.controller, {super.key});

  @override
  Widget build(BuildContext context) {
    controller.searchCar();
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'GumTreeApp',
            style: const TextStyle(
                fontWeight: FontWeight.bold, color: Colors.black),
          ),
          backgroundColor: Color.fromARGB(255, 186, 179, 179),
        ),
        body: controller.cars.length > 0
            ? CarListView(controller: controller)
            : const Center(
                child: Text("No Item"),
              ),
      ),
    );
  }
}

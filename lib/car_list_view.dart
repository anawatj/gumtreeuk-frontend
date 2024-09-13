import 'package:flutter/material.dart';
import 'package:gumtreeuk/car_controller.dart';
import 'package:gumtreeuk/car_item_view.dart';

class CarListView extends StatefulWidget {
  final CarListController controller;

  const CarListView({
    super.key,
    required this.controller
  });

  @override
  State<CarListView> createState() => _CarListViewState();
}

class _CarListViewState extends State<CarListView> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
       padding: const EdgeInsets.all(20.0),
      itemCount: widget.controller.cars.length,
      itemBuilder: (context, index) {
        final car = widget.controller.cars[index];
        return CarItemView(car);
      },
    );
  }
}
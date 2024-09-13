import 'package:flutter/material.dart';
import 'package:gumtreeuk/car_item_field.dart';
import 'package:gumtreeuk/model.dart';

@immutable
class CarItemView extends StatelessWidget {
  Car car;
  CarItemView(this.car);

  @override
  Widget build(BuildContext context) {
    return Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        elevation: 8,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              ListTile(
                  title: Text(
                    car.id,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                  subtitle: ListBody(
                    children: <Widget>[
                      CarItemField("Name", car.name),
                      CarItemField("Title", car.title),
                      CarItemField("Make", car.make),
                      CarItemField("Model", car.model),
                      CarItemField("Year", car.year),
                      CarItemField("Price", car.price),
                    ],
                  ))
            ]));
  }
}

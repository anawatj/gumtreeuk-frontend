import 'package:gumtreeuk/car_api.dart';
import 'package:gumtreeuk/model.dart';

class CarListController {
  List<Car> cars = List.empty();
  Future searchCar() async {
    cars = await CarApi().search();
  }
}

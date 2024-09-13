import 'package:dio/dio.dart';
import 'package:gumtreeuk/model.dart';

class CarApi {
  static const _jsonDir = 'assets/cars/';
  static const _jsonExtension = '.json';
  static const _url = _jsonDir + "search/cars" + _jsonExtension;

  Future<List<Car>> search() async {
    var res = await Dio().get(_url);
    if (res.statusCode == 200) {
      var results = res.data["searchResults"] as List;

      List<Car> cars = results
          .map((e) => Car(e["id"], e["name"], e["title"], e["make"], e["model"],
              e["year"], e["price"]))
          .toList();

      return Future.value(cars);
    } else {
      return Future.value(List.empty());
    }
  }
}

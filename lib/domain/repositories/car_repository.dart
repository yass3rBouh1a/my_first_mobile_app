import 'package:projet_mobile/data/models/car.dart';

abstract class CarRepository {
  Future<List<Car>> fetchCars();
}
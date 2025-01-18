import 'package:projet_mobile/data/models/car.dart';
import 'package:projet_mobile/domain/repositories/car_repository.dart';

class GetCars {
  final CarRepository repository;

  GetCars(this.repository);

  Future<List<Car>> call() async {
    return await repository.fetchCars();
  }
}
import 'package:projet_mobile/data/datasources/firebase_car_data_source.dart';
import 'package:projet_mobile/data/models/car.dart';
import 'package:projet_mobile/domain/repositories/car_repository.dart';

class CarRepositoryImpl implements CarRepository {
  final FirebaseCarDataSource dataSource;

  CarRepositoryImpl(this.dataSource);

  @override
  Future<List<Car>> fetchCars() {
    return dataSource.getCars();
  }
}

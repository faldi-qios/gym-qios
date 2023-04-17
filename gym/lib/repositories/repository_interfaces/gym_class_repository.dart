import 'package:gym/models/GymClass.dart';

abstract class GymClassRepository {
  Future<List<GymClass>?> get();
}

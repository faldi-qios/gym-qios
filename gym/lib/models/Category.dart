import 'package:gym/models/GymClass.dart';

class Category {
  final String id;
  final String name;
  final List<GymClass> classes;

  Category({
    required this.name,
    required this.id,
    required this.classes,
  });
}

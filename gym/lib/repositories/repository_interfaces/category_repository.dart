import 'package:gym/models/Category.dart';

abstract class CategoryRepository {
  Future<List<Category>?> get();
}

import 'package:flutter/material.dart';

import '../models/Category.dart';

class ClassCategoryProvider extends ChangeNotifier {
  final List<Category> _categories = [];
}

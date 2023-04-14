import 'package:flutter/material.dart';
import 'package:gym/repositories/network_repositories/category_network_repository.dart';
import 'package:gym/repositories/network_repositories/gym_class_network_repository.dart';
import 'package:gym/repositories/repository_interfaces/gym_class_repository.dart';

import '../models/GymClass.dart';
import '../models/Category.dart';

class GymClassProvider extends ChangeNotifier {
  List<GymClassNetworkRepository>? _classes;

  // Getter
  get classes => _classes;

  detailClass(id) =>
      classes?.firstWhere((element) => element.id.toString() == id.toString());
}

import 'package:flutter_clean_architecture_template/src/di/abstract_binding.dart';
import 'package:flutter_clean_architecture_template/src/modules/not_found/controller/not_found_controller.dart';
import 'package:get_it/get_it.dart';

class NotFoundBinding extends AbstractBinding {
  @override
  Future<void> binding(GetIt it) async {
    it.registerSingleton(NotFoundController());
  }
}

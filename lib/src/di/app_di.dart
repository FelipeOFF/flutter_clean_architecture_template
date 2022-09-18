import 'package:get_it/get_it.dart';

import 'abstract_binding.dart';

// AppDI can give to us a instance of GetIt and retains the
// Bindings from features
class AppDI {
  static final GetIt it = GetIt.instance;

  List<AbstractBinding> listOfBinding = <AbstractBinding>[
    // Binding from features
  ];

  Future<void> setupDI() async {
    for (final binding in listOfBinding) {
      await binding.binding(it);
    }
  }
}

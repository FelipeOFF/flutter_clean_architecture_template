import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture_template/src/domain/error/generic_error.dart';

class BaseController {
  final loadingNotifier = ValueNotifier(false);
  final errorObjectNotifier = ValueNotifier<GenericError?>(null);

  bool get loading => loadingNotifier.value;
  set loading(bool value) => loadingNotifier.value = value;

  GenericError? get errorObject => errorObjectNotifier.value;
  set errorObject(GenericError? value) => errorObjectNotifier.value = value;
}

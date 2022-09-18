import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture_template/src/commons/controller/base_controller.dart';
import 'package:flutter_clean_architecture_template/src/di/app_di.dart';
import 'package:flutter_clean_architecture_template/src/domain/error/generic_error.dart';

abstract class BaseStatePage<T extends StatefulWidget, C extends BaseController> extends State<T> {
  final C controller = AppDI.it<C>();

  @override
  void initState() {
    super.initState();
    controller.errorObjectNotifier.addListener(_listenerOnError);
  }

  @override
  void dispose() {
    controller.errorObjectNotifier.removeListener(_listenerOnError);
    super.dispose();
  }

  Future<void> _listenerOnError() async {
    final error = controller.errorObject;
    if (error != null) {
      await showDialogErrorFromGenericError(error);
      controller.errorObject = null;
    }
  }

  Future<void> showDialogErrorFromGenericError(GenericError error) => Future.value();
}

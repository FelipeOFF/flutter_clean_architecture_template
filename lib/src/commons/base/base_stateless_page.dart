import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture_template/src/commons/controller/base_controller.dart';
import 'package:flutter_clean_architecture_template/src/di/app_di.dart';
import 'package:flutter_clean_architecture_template/src/domain/error/generic_error.dart';

abstract class BaseStatelessPage<C extends BaseController> extends StatelessWidget {
  final C controller = AppDI.it<C>();

  BaseStatelessPage({super.key}) {
    controller.errorObjectNotifier.addListener(_listenerOnError);
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

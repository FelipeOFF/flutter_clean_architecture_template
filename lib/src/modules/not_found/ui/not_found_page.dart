import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture_template/src/commons/base/base_stateless_page.dart';
import 'package:flutter_clean_architecture_template/src/domain/error/generic_error.dart';
import 'package:flutter_clean_architecture_template/src/modules/not_found/controller/not_found_controller.dart';

class NotFoundPage extends BaseStatelessPage<NotFoundController> {
  NotFoundPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Not found page"),
      ),
    );
  }

  @override
  Future showDialogErrorFromGenericError(GenericError error) {
    return Future.value(null);
  }
}

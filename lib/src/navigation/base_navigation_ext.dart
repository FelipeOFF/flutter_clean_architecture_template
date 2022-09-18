import 'package:flutter_clean_architecture_template/src/navigation/base_navigation.dart';

extension BaseNavigationListExt on List<BaseNavigation> {
  Map<String, RouteFactoryBaseNavigation> get expandToMapper =>
      <String, RouteFactoryBaseNavigation>{for (final map in this) ...map.listOfPages};
}

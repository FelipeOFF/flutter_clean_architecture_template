import 'package:flutter/material.dart';

typedef RouteFactoryBaseNavigation = Widget Function(BuildContext context, RouteSettings settings);

abstract class BaseNavigation {
  abstract final Map<String, RouteFactoryBaseNavigation> listOfPages;
}

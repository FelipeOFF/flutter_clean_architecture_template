import 'package:flutter_clean_architecture_template/src/res/env/profile.dart';
import 'package:logger/logger.dart';

LogFilter? _getFilterFromProfile() {
  switch (getProfileFromEnvironmentConfig()) {
    case Profile.dev:
      return DevelopmentFilter();
    case Profile.hml:
      return DevelopmentFilter();
    case Profile.prod:
      return ProductionFilter();
    default:
      return null;
  }
}

Level? _getLevelFromProfile() {
  switch (getProfileFromEnvironmentConfig()) {
    case Profile.dev:
      return Level.verbose;
    case Profile.hml:
      return Level.verbose;
    case Profile.prod:
      return Level.nothing;
    default:
      return null;
  }
}

final logger = Logger(filter: _getFilterFromProfile(), level: _getLevelFromProfile());

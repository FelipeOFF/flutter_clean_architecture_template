class EnvironmentConfig {
  static const String profile =
      String.fromEnvironment('PROFILE', defaultValue: "dev");

  static const isLoggingEnable = bool.fromEnvironment('LOGGING_HTTP_ENABLE');
}

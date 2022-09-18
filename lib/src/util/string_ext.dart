extension StringExt on String {
  bool get isAValidURL => Uri.parse(this).isAbsolute;
}

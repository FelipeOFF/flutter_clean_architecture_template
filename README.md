# flutter_clean_architecture_template

This project is a template for use in all projects

## Getting Started

This project is a starting point for a Flutter application that follows the
[simple app state management
tutorial](https://flutter.dev/docs/development/data-and-backend/state-mgmt/simple).

For help getting started with Flutter development, view the
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Assets

The `assets` directory houses images, fonts, and any other files you want to
include with your application.

The `assets/images` directory contains [resolution-aware
images](https://flutter.dev/docs/development/ui/assets-and-images#resolution-aware).

## Localization

This project generates localized messages based on arb files found in
the `lib/src/localization` directory.

To support additional languages, please visit the tutorial on
[Internationalizing Flutter
apps](https://flutter.dev/docs/development/accessibility-and-localization/internationalization)

## How I can use?

export PROJECT_PACKAGE=sample

git clone https://github.com/FelipeOFF/flutter_clean_architecture_template.git && flutter create -t skeleton "${PROJECT_PACKAGE}" && cp -RTv flutter_clean_architecture_template/lib "${PROJECT_PACKAGE}"/lib && cp -Tv flutter_clean_architecture_template/pubspec.yaml "${PROJECT_PACKAGE}"/pubspec.yaml && cp -Tv flutter_clean_architecture_template/l10n.yaml "${PROJECT_PACKAGE}"/l10n.yaml && cp -RTv flutter_clean_architecture_template/test "${PROJECT_PACKAGE}"/test && cp -RTv flutter_clean_architecture_template/build/ "${PROJECT_PACKAGE}"/build/ && cp -RTv flutter_clean_architecture_template/assets/ "${PROJECT_PACKAGE}"/assets/ && cp -RTv flutter_clean_architecture_template/.dart_tool/ "${PROJECT_PACKAGE}"/.dart_tool/ && find ./"${PROJECT_PACKAGE}"/ -exec sed -i 's/flutter_clean_architecture_template/'"${PROJECT_PACKAGE}"'/gI' {} \;
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_clean_architecture_template/src/app.dart';
import 'package:flutter_clean_architecture_template/src/settings/settings_controller.dart';
import 'package:flutter_clean_architecture_template/src/settings/settings_service.dart';

void main() {
  group('ListDetailApp', () {
    testWidgets('displays a list of items', (WidgetTester tester) async {
      final service = SettingsService();
      final controller = SettingsController(service);

      await controller.loadSettings();
      await tester.pumpWidget(MyApp(settingsController: controller));

      expect(find.byType(ListTile), findsNWidgets(3));
    });

    testWidgets('changes the app theme', (WidgetTester tester) async {
      final service = SettingsService();
      final controller = SettingsController(service);

      // Navigate to Settings
      await controller.loadSettings();
      await tester.pumpWidget(MyApp(settingsController: controller));
      await tester.tap(find.byType(IconButton));
      await tester.pumpAndSettle();

      // Verify defaults in place
      expect(controller.themeMode, ThemeMode.system);
      expect(findApp(ThemeMode.system), findsOneWidget);

      // Change to Dark Theme
      await tester.tap(find.text('System Theme'));
      await tester.pumpAndSettle();
      await tester.tap(find.text('Dark Theme').last);
      await tester.pumpAndSettle();

      // Verify Dark Theme rendered
      expect(controller.themeMode, ThemeMode.dark);
      expect(findApp(ThemeMode.dark), findsOneWidget);

      // Change to Light Theme
      await tester.tap(find.text('Dark Theme'));
      await tester.pumpAndSettle();
      await tester.tap(find.text('Light Theme').last);
      await tester.pumpAndSettle();

      // Verify light theme enabled
      expect(controller.themeMode, ThemeMode.light);
      expect(findApp(ThemeMode.light), findsOneWidget);
    });
  });
}

Finder findApp(ThemeMode themeMode) => find.byWidgetPredicate(
      (widget) => widget is MaterialApp && widget.themeMode == themeMode,
    );

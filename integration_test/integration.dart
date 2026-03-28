import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:flutter_application_1/main.dart' as app; // Replace with your actual package name

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('End-to-End Acceptance Test', () {
    testWidgets('Verify default greeting text appears', (tester) async {
      // 1. Start the app
      app.main();
      await tester.pumpAndSettle(); // Wait for animations to finish

      // 2. Find the greeting text
      // We are looking for "Hello José" based on the logic in your main.dart
      final greetingFinder = find.text('Hello José');

      // 3. Assertion: Check if the widget exists
      expect(greetingFinder, findsOneWidget);
      
      // Optional: Add a small delay so you can see it in your video
      await Future.delayed(const Duration(seconds: 2));
    });
  });
}
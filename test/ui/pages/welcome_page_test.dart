import 'package:ezwallet_mobile/ui/pages/welcome_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../factories/create_widget_for_testing.dart';

void main() {
  testWidgets('should welcome page has an images', (tester) async {
    await tester.pumpWidget(createWidgetForTesting(child: const WelcomePage()));
    final imagesFinder = find.byType(Image);
    expect(imagesFinder, findsOneWidget);
  });
  testWidgets('should welcome page has a button with text Log-in',
      (tester) async {
    await tester.pumpWidget(createWidgetForTesting(child: const WelcomePage()));

    final primaryButtonFinder = find.text('Log-in');

    expect(primaryButtonFinder, findsOneWidget);
  });

  testWidgets('should has a button with text Cadastrar-se', (tester) async {
    await tester.pumpWidget(createWidgetForTesting(child: const WelcomePage()));

    final primaryButtonFinder = find.text('Cadastrar-se');

    expect(primaryButtonFinder, findsOneWidget);
  });
}

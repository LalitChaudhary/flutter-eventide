import 'package:flutter_test/flutter_test.dart';
import 'package:eventide/main.dart';

void main() {
  testWidgets('demo profile opens Eventide', (tester) async {
    await tester.pumpWidget(const EventideApp());
    await tester.tap(find.text('Open Eventide'));
    await tester.pumpAndSettle();
    expect(find.text('Tonight'), findsOneWidget);
    expect(find.textContaining('tickets'), findsWidgets);
  });
}

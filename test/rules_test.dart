import 'package:flutter_test/flutter_test.dart';
import 'package:eventide/domain/rules.dart';

void main() {
  test('tickets advances and then stops at the cap', () {
    expect(nextTickets(0), 1);
    expect(capped(12, 12), 12);
    expect(nextTickets(-4), 0);
  });
}

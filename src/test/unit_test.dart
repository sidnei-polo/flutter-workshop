import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_workshop/presentation/contoller/devices_controller.dart';

void main() {
  test('Counter value should be incremented', () {
    final counter = DevicesController();

    counter.add();

    expect(counter.value, 1);
  });
}

import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_workshop/presentation/contoller/counter_controller.dart';

void main() {
  test('Counter value should be incremented', () {
    final counter = CounterController();

    counter.add();

    expect(counter.value, 1);
  });
}

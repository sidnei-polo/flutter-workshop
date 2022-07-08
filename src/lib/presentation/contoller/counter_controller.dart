import 'package:flutter/material.dart';

class CounterController extends ValueNotifier<int> {
  CounterController() : super(0);

  void add() {
    value++;
  }
}

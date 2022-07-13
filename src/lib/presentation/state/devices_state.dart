import 'dart:collection';

import 'package:flutter_workshop/domain/device.dart';

class DevicesState {
  final bool isLoading;
  final UnmodifiableListView<Device> devices;

  DevicesState({required this.isLoading, required this.devices});

  factory DevicesState.initial() {
    return DevicesState(
        isLoading: false, devices: UnmodifiableListView<Device>([]));
  }

  DevicesState copyWith({
    bool? isLoading,
    UnmodifiableListView<Device>? devices,
  }) {
    return DevicesState(
      isLoading: isLoading ?? this.isLoading,
      devices: devices ?? this.devices,
    );
  }
}

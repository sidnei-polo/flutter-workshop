import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter_workshop/domain/device.dart';
import 'package:flutter_workshop/presentation/state/devices_state.dart';

class DevicesController extends ValueNotifier<DevicesState> {
  static final List<Device> devicesSource = [
    Device(name: "First Device", status: DeviceStatus.working),
    Device(name: "Second Device", status: DeviceStatus.working),
    Device(name: "Third Device", status: DeviceStatus.working),
    Device(name: "Fourth Device", status: DeviceStatus.working),
  ];

  DevicesController() : super(DevicesState.initial());

  Future<void> fetch({bool setLoading = true}) async {
    value = value.copyWith(isLoading: setLoading);
    await Future.delayed(const Duration(seconds: 2));
    value = value.copyWith(
        isLoading: false, devices: UnmodifiableListView(devicesSource));
  }
}

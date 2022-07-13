import 'package:flutter_workshop/domain/device.dart';

class DeviceRepository {
  static final List<Device> devices = [
    Device(name: "First Device", status: DeviceStatus.working),
    Device(name: "Second Device", status: DeviceStatus.working),
    Device(name: "Third Device", status: DeviceStatus.working),
    Device(name: "Fourth Device", status: DeviceStatus.working),
  ];

  List<Device> getDevices() => devices;
}

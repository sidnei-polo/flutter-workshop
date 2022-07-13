class Device {
  final String name;
  final DeviceStatus status;

  Device({required this.name, required this.status});
}

enum DeviceStatus { working, fault, busy }

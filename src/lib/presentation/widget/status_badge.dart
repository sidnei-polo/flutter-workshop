import 'package:flutter/material.dart';
import 'package:flutter_workshop/domain/device.dart';

class StatusBadge extends StatelessWidget {
  final DeviceStatus status;

  const StatusBadge({Key? key, required this.status}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: _statusColor(),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Text(status.toString().toUpperCase()),
    );
  }

  Color _statusColor() {
    switch (status) {
      case DeviceStatus.working:
        return Colors.green;
      case DeviceStatus.busy:
        return Colors.yellow;
      case DeviceStatus.fault:
        return Colors.red;
    }
  }
}

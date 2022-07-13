import 'package:flutter/material.dart';
import 'package:flutter_workshop/domain/device.dart';
import 'package:flutter_workshop/presentation/widget/status_badge.dart';

class DeviceItem extends StatelessWidget {
  final Device device;

  const DeviceItem({Key? key, required this.device}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(device.name),
            const SizedBox(height: 8.0),
            StatusBadge(status: device.status),
          ],
        ),
      ),
    );
  }
}

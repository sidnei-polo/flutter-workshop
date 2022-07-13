import 'package:flutter/material.dart';
import 'package:flutter_workshop/presentation/contoller/devices_controller.dart';
import 'package:flutter_workshop/presentation/widget/device_item.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  final String title;

  const HomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var state = context.watch<DevicesController>().value;
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: state.isLoading
          ? const Center(child: CircularProgressIndicator())
          : RefreshIndicator(
              onRefresh: () =>
                  context.read<DevicesController>().fetch(setLoading: false),
              child: ListView.builder(
                itemCount: state.devices.length,
                itemBuilder: (context, index) =>
                    DeviceItem(device: state.devices[index]),
              ),
            ),
    );
  }
}

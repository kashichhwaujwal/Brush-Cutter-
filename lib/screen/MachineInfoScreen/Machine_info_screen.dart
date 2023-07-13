import 'package:brush_cutter_flutter/pages/machine_info_page.dart';
import 'package:flutter/material.dart';

class MachineInfoScreen extends StatelessWidget {
  const MachineInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Machine Information Screen')),
      body: Center(
        child: MachineInfoPage(),
      ),
    );
  }
}

import 'package:brush_cutter_flutter/pages/operation_page.dart';
import 'package:flutter/material.dart';

class OperationScreen extends StatelessWidget {
  const OperationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Operation Screen')),
      body: Center(
        child: OperationPage(),
      ),
    );
  }
}

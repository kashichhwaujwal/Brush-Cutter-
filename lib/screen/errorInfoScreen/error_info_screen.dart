import 'package:flutter/material.dart';

const errorList = [
  "Connection Error",
  "Data Error",
  "404 Error",
  "Unauthorized Error",
  "Invalidated Error",
  "Validation Error",
  "New Error",
];

class ErrorInfoScreen extends StatefulWidget {
  const ErrorInfoScreen({super.key});

  @override
  State<ErrorInfoScreen> createState() => _ErrorInfoScreenState();
}

class _ErrorInfoScreenState extends State<ErrorInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Error Information'),
      ),
      body: Center(
        child: ListView.builder(
          itemBuilder: (context, count) => ListTile(
            title: Text(
              errorList[count],
              style: TextStyle(color: Colors.red),
            ),
          ),
          itemCount: errorList.length,
        ),
      ),
    );
  }
}

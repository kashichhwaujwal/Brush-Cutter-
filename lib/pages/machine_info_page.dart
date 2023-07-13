import 'package:brush_cutter_flutter/widgets/frInclineMeter.dart';
import 'package:brush_cutter_flutter/widgets/lrInclineMeter%20copy.dart';
import 'package:flutter/material.dart';

class MachineInfoPage extends StatefulWidget {
  const MachineInfoPage({
    super.key,
  });

  @override
  State<MachineInfoPage> createState() => _MachineInfoPageState();
}

class _MachineInfoPageState extends State<MachineInfoPage> {
  int connectState = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 300,
              width: 150,
              child: FrInclineMeter(),
            ),
            Container(
              height: 300,
              width: 150,
              child: LrInclineMeter(),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              width: 15,
            ),
            Expanded(
              child: Container(
                height: 50,
                width: 150,
                decoration: BoxDecoration(color: Colors.blue),
                child: Text('Right Motor Temp'),
              ),
            ),
            SizedBox(
              width: 15,
            ),
            Expanded(
              child: Container(
                height: 50,
                width: 150,
                decoration: BoxDecoration(color: Colors.blue),
                child: Text('Left Motor Temp'),
              ),
            ),
            SizedBox(
              width: 15,
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          height: 50,
          width: 350,
          decoration: BoxDecoration(color: Colors.blue),
          child: Text('Alternate Temp'),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              width: 15,
            ),
            Expanded(
              child: Container(
                height: 50,
                width: 70,
                decoration: BoxDecoration(color: Colors.blue),
                child: Text('Regenerative Resistor Temp'),
              ),
            ),
            SizedBox(
              width: 15,
            ),
            Expanded(
              child: Container(
                height: 50,
                width: 70,
                decoration: BoxDecoration(color: Colors.blue),
                child: Text('Inside Controller Box Temp'),
              ),
            ),
            SizedBox(
              width: 15,
            ),
            Expanded(
              child: Container(
                height: 50,
                width: 70,
                decoration: BoxDecoration(color: Colors.blue),
                child: Text('SCiB Battery Temp'),
              ),
            ),
            SizedBox(
              width: 15,
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 50,
              width: 80,
              decoration: BoxDecoration(color: Colors.blue),
              child: Text('12V PSV'),
            ),
            Container(
              height: 50,
              width: 80,
              decoration: BoxDecoration(color: Colors.blue),
              child: Text('24V PSV'),
            ),
            Container(
              height: 50,
              width: 80,
              decoration: BoxDecoration(color: Colors.blue),
              child: Text('VM PSV'),
            ),
            Container(
              height: 50,
              width: 80,
              decoration: BoxDecoration(color: Colors.blue),
              child: Text('SCiB BV'),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          height: 50,
          width: 350,
          decoration: BoxDecoration(color: Colors.blue),
          child: Text('Serial Number'),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          height: 50,
          width: 350,
          decoration: BoxDecoration(color: Colors.blue),
          child: Text('Total Startup Time'),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          height: 50,
          width: 350,
          decoration: BoxDecoration(color: Colors.blue),
          child: Text('SCiB Charging Rate'),
        ),
      ]),
    ));
  }
}

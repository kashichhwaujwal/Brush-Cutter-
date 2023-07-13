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
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20)),
                child: Center(
                    child: Text(
                  'Right Motor Temp',
                  style: TextStyle(color: Colors.white),
                )),
              ),
            ),
            SizedBox(
              width: 15,
            ),
            Expanded(
              child: Container(
                height: 50,
                width: 150,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20)),
                child: Center(
                    child: Text(
                  'Left Motor Temp',
                  style: TextStyle(color: Colors.white),
                )),
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
          decoration: BoxDecoration(
              color: Colors.blue, borderRadius: BorderRadius.circular(20)),
          child: Center(
              child: Text(
            'Alternate Temp',
            style: TextStyle(
              color: Colors.white,
            ),
          )),
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
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20)),
                child: Center(
                    child: Text(
                  'Regenerative Resistor Temp',
                  style: TextStyle(color: Colors.white),
                )),
              ),
            ),
            SizedBox(
              width: 15,
            ),
            Expanded(
              child: Container(
                height: 50,
                width: 70,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20)),
                child: Center(
                    child: Text(
                  'Inside Controller Box Temp',
                  style: TextStyle(color: Colors.white),
                )),
              ),
            ),
            SizedBox(
              width: 15,
            ),
            Expanded(
              child: Container(
                height: 50,
                width: 70,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20)),
                child: Center(
                    child: Text(
                  'SCiB Battery Temp',
                  style: TextStyle(color: Colors.white),
                )),
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
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(20)),
              child: Center(
                child: Text(
                  '12V PSV',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Container(
              height: 50,
              width: 80,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(20)),
              child: Center(
                  child: Text(
                '24V PSV',
                style: TextStyle(color: Colors.white),
              )),
            ),
            Container(
              height: 50,
              width: 80,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(20)),
              child: Center(
                  child: Text(
                'VM PSV',
                style: TextStyle(color: Colors.white),
              )),
            ),
            Container(
              height: 50,
              width: 80,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(20)),
              child: Center(
                  child: Text(
                'SCiB BV',
                style: TextStyle(color: Colors.white),
              )),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          height: 50,
          width: 350,
          decoration: BoxDecoration(
              color: Colors.blue, borderRadius: BorderRadius.circular(20)),
          child: Center(
              child: Text(
            'Serial Number',
            style: TextStyle(color: Colors.white),
          )),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          height: 50,
          width: 350,
          decoration: BoxDecoration(
              color: Colors.blue, borderRadius: BorderRadius.circular(20)),
          child: Center(
              child: Text(
            'Total Startup Time',
            style: TextStyle(color: Colors.white),
          )),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          height: 50,
          width: 350,
          decoration: BoxDecoration(
              color: Colors.blue, borderRadius: BorderRadius.circular(20)),
          child: Center(
              child: Text(
            'SCiB Charging Rate',
            style: TextStyle(color: Colors.white),
          )),
        ),
      ]),
    ));
  }
}

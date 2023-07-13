import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class InclineMeter extends StatelessWidget {
  const InclineMeter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      child: Column(
        children: [
          Container(
            height: 300,
            child: SfRadialGauge(
                title: GaugeTitle(
                    text: 'Incline Angle',
                    textStyle:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
                axes: <RadialAxis>[
                  RadialAxis(minimum: 0, maximum: 150, pointers: <GaugePointer>[
                    NeedlePointer(value: 90)
                  ], ranges: <GaugeRange>[
                    GaugeRange(
                        startValue: 0,
                        endValue: 50,
                        color: Colors.green,
                        startWidth: 10,
                        endWidth: 10),
                    GaugeRange(
                        startValue: 50,
                        endValue: 100,
                        color: Colors.orange,
                        startWidth: 10,
                        endWidth: 10),
                    GaugeRange(
                        startValue: 100,
                        endValue: 150,
                        color: Colors.red,
                        startWidth: 10,
                        endWidth: 10)
                  ]),
                ]),
          ),
        ],
      ),
    );
  }
}

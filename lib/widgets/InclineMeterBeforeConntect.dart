import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class InclineMeterBeforeConnect extends StatelessWidget {
  const InclineMeterBeforeConnect({
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
            ),
          ),
        ],
      ),
    );
  }
}

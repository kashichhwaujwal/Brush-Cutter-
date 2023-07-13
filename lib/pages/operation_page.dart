import 'dart:math';

import 'package:brush_cutter_flutter/config/imagePath.dart';
import 'package:brush_cutter_flutter/widgets/InclineMeter.dart';
import 'package:flutter/material.dart';

class OperationPage extends StatefulWidget {
  const OperationPage({super.key});

  @override
  State<OperationPage> createState() => _OperationPageState();
}

class _OperationPageState extends State<OperationPage> {
  int speed = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  child: Row(children: [
                    Icon(Icons.cloudy_snowing),
                    Text('28 deg'),
                  ]),
                ),
                Container(
                  child: Row(
                      children: [Icon(Icons.data_exploration), Text("$speed")]),
                )
              ],
            )),
            Container(
              child: IconButton(
                iconSize: 100,
                icon: const Icon(Icons.arrow_drop_up),
                onPressed: () {
                  // ...
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: IconButton(
                    iconSize: 100,
                    icon: const Icon(Icons.arrow_left),
                    onPressed: () {
                      // ...
                    },
                  ),
                ),
                Stack(
                  children: [
                    Image(image: AssetImage(cutter)),
                    Positioned.fill(
                      child: Align(
                        alignment: Alignment.center,
                        child: EngineButton(),
                      ),
                    ),
                  ],
                ),
                Container(
                  child: IconButton(
                    iconSize: 100,
                    icon: const Icon(Icons.arrow_right),
                    onPressed: () {
                      // ...
                    },
                  ),
                )
              ],
            ),
            Container(
              child: IconButton(
                iconSize: 100,
                icon: const Icon(Icons.arrow_drop_down),
                onPressed: () {
                  // ...
                },
              ),
            ),
            Container(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                        child: Container(
                          child: Text('Increase Speed'),
                          alignment: Alignment.center,
                        ),
                        onPressed: () {
                          if (speed < 255)
                            setState(() {
                              speed += 1;
                            });
                        }),
                    ElevatedButton(
                        child: Container(
                          child: Text('Decrease Speed'),
                          alignment: Alignment.center,
                        ),
                        onPressed: () {
                          if (speed > 1)
                            setState(() {
                              speed -= 1;
                            });
                        }),
                  ]),
            )
          ],
        ),
      ),
    );
  }
}

class EngineButton extends StatefulWidget {
  const EngineButton({
    super.key,
  });

  @override
  State<EngineButton> createState() => _EngineButtonState();
}

class _EngineButtonState extends State<EngineButton> {
  bool engineState = true;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          engineState = !engineState;
        });
      },
      child: Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: engineState
              ? Colors.green[300]?.withOpacity(0.7)
              : Colors.red[300]?.withOpacity(0.7),
        ),
        child: Center(
            child: Text(
          engineState ? 'Start' : 'Stop',
        )),
      ),
    );
  }
}

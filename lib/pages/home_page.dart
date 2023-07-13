import 'package:brush_cutter_flutter/config/routes.dart';
import 'package:brush_cutter_flutter/screen/MachineInfoScreen/Machine_info_screen.dart';
import 'package:brush_cutter_flutter/screen/operationScreen/operation_screen.dart';
import 'package:brush_cutter_flutter/widgets/InclineMeter.dart';
import 'package:brush_cutter_flutter/widgets/InclineMeterBeforeConntect.dart';
import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool connectState = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            connectState ? InclineMeter() : InclineMeterBeforeConnect(),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Icon(Icons.cloudy_snowing), Text("28 deg")],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Switch(
              trackColor: MaterialStateProperty.all(Colors.black38),
              activeColor: Colors.green.withOpacity(0.4),
              inactiveThumbColor: Colors.red.withOpacity(0.4),
              activeThumbImage: const AssetImage('assets/happy_emoji.png'),
              inactiveThumbImage: const AssetImage('assets/sad_emoji.png'),
              value: connectState,
              onChanged: (value) =>
                  {print(value), setState(() => connectState = value)},
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: ElevatedButton(
                        child: Container(
                          child: Text('Start'),
                          alignment: Alignment.center,
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => OperationScreen(),
                            ),
                          );
                        }),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: ElevatedButton(
                        child: Container(
                          child: Text('Machine Information'),
                          alignment: Alignment.center,
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MachineInfoScreen()),
                          );
                        }),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 100,
              width: 350,
              child: ElevatedButton(
                  child: Container(
                    child: Text('Error Information'),
                    alignment: Alignment.center,
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, errorInfoRoute);
                  }),
            ),
            SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: ElevatedButton(
                        child: Container(
                          child: Text('Change Password'),
                          alignment: Alignment.center,
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, changePasswordRoute);
                        }),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: ElevatedButton(
                        child: Container(
                          child: Text('Set Access Point'),
                          alignment: Alignment.center,
                        ),
                        onPressed: () {
                          Navigator.pushNamed(
                            context,
                            setAccessPointRoute,
                          );
                        }),
                  ),
                  SizedBox(
                    width: 15,
                    height: 15,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

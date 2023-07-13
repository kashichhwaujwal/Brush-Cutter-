import 'package:brush_cutter_flutter/pages/home_page.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      // drawer: Drawer(
      //   child: ListView(
      //     padding: EdgeInsets.zero,
      //     children: <Widget>[
      //       DrawerHeader(
      //         child: Text('Drawer Header'),
      //         decoration: BoxDecoration(
      //           color: Colors.blue,
      //           shape: BoxShape.rectangle,
      //         ),
      //       ),
      //       ListTile(
      //         title: const Text('Machine Information'),
      //         onTap: () {
      //           // Update the state of the app.
      //           // ...
      //         },
      //       ),
      //       ListTile(
      //         title: const Text('Maximum Speed Setting'),
      //         onTap: () {
      //           // Update the state of the app.
      //           // ...
      //         },
      //       ),
      //       ListTile(
      //         title: const Text('Engine Operation'),
      //         onTap: () {
      //           // Update the state of the app.
      //           // ...
      //         },
      //       ),
      //       ListTile(
      //         title: const Text('Machine Operation'),
      //         onTap: () {
      //           // Update the state of the app.
      //           // ...
      //         },
      //       ),
      //       ListTile(
      //         title: const Text('Error Information'),
      //         onTap: () {
      //           Navigator.pushNamed(context, errorInfoRoute);
      //         },
      //       ),
      //       ListTile(
      //         title: const Text('Change Password'),
      //         onTap: () {
      //           Navigator.pushNamed(context, changePasswordRoute);
      //         },
      //       ),
      //     ],
      //   ),
      // ),

      body: Center(
        child: HomePage(),
      ),
    );
  }
}

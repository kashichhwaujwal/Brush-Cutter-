import 'package:brush_cutter_flutter/config/routes.dart';
import 'package:brush_cutter_flutter/screen/changePasswordScreen/change_password_screen.dart';
import 'package:brush_cutter_flutter/screen/errorInfoScreen/error_info_screen.dart';
import 'package:brush_cutter_flutter/screen/homeScreen/home_screen.dart';
import 'package:brush_cutter_flutter/screen/loginScreen/login_screen.dart';
import 'package:brush_cutter_flutter/screen/setAcessPointScreen/set_acess_point_screen.dart';
import 'package:flutter/material.dart';

import '../screen/operationScreen/operation_screen.dart';

Route routeManager(RouteSettings settings) {
  switch (settings.name) {
    case homeRoute:
      return MaterialPageRoute(
        builder: (_) => HomeScreen(),
      );
    case loginRoute:
      return MaterialPageRoute(
        builder: (_) => LoginScreen(),
      );
    case operationRoute:
      return MaterialPageRoute(
        builder: (_) => OperationScreen(),
      );
    case errorInfoRoute:
      return MaterialPageRoute(
        builder: (_) => ErrorInfoScreen(),
      );
    case changePasswordRoute:
      return MaterialPageRoute(
        builder: (_) => ChangePasswordScreen(),
      );
    case setAccessPointRoute:
      return MaterialPageRoute(
        builder: (_) => SetAccessPointScreen(),
      );
    default:
      return MaterialPageRoute(
        builder: (_) => ErrorScreen(),
      );
  }
}

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('The route is not valid'),
      ),
    );
  }
}

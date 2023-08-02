import 'package:flutter/material.dart';

navigate(BuildContext context, Widget screen, {bool fullscreenDialog = false}) {
  return Navigator.push(
    context,
    MaterialPageRoute(
        builder: (context) => screen, fullscreenDialog: fullscreenDialog),
  );
}

navigateNamedReplacement(BuildContext context, String routeName,
    [Object? args]) {
  return Navigator.pushReplacementNamed(
    context,
    routeName,
    arguments: args,
  );
}

Future navigateNamed(BuildContext context, String screen, [Object? args]) {
  return Navigator.pushNamed(
    context,
    screen,
    arguments: args,
  );
}

navigateReplacement(BuildContext context, Widget screen) {
  return Navigator.pushReplacement(
    context,
    MaterialPageRoute(
      builder: (context) => screen,
    ),
  );
}

navigateNamedUntil(BuildContext context, String routeName, [Object? args]) {
  return Navigator.pushNamedAndRemoveUntil(
    context,
    routeName,
    (route) => false,
    arguments: args,
  );
}

navigateUntil(BuildContext context, {required Widget screen}) {
  return Navigator.pushAndRemoveUntil(
    context,
    MaterialPageRoute(
      builder: (context) => screen,
    ),
    (route) => false,
  );
}

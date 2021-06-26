import 'package:app_flutter_challenge/routes/RoutesGenerator.dart';
import 'package:app_flutter_challenge/routes/RoutesName.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
          accentColor: Colors.amber,
          primaryColor: Colors.blueAccent,
          splashColor: Colors.brown),
      initialRoute: RoutesName.goToSplash,
      onGenerateRoute: RoutesGenerator.generateRoute,
    ),
  );
}

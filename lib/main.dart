import 'package:flutter/material.dart';
import 'package:musk_motor/screens/add_car.dart';
import 'package:musk_motor/screens/sign_in.dart';
import 'package:musk_motor/screens/sign_up.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        SignIn.routeName: (ctx) => SignIn(),
        SignUp.routeName: (ctx) => SignUp(),
        AddCar.routeName: (ctx) => AddCar(),
      },
      home: SignUp(),
    );
  }
}

import 'package:flutter/material.dart';

import '../views/mainVeiw.dart';

class  MyApp extends StatelessWidget {
const MyApp({Key? key}) : super(key: key);

// This widget is the root of your application.
   @override
   Widget build(BuildContext context) {
    return MaterialApp(
      home: MainVeiw(),
    );
 }
}

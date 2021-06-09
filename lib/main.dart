import 'package:dailydiary/provider1.dart';
import 'package:dailydiary/trial.dart';
import 'package:dailydiary/welcome.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (context)=>Provider1(),
      child: MaterialApp(debugShowCheckedModeBanner: false,
home: Welcome(),
      ),
    );
  }
}



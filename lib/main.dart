// @dart=2.9
import 'package:dailydiary/provider1.dart';
import 'package:dailydiary/trial.dart';
import 'package:dailydiary/trial2.dart';
import 'package:dailydiary/welcome.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (context)=>Provider1(),
      child: MaterialApp(debugShowCheckedModeBanner: false,
home: Tinder(),
      ),
    );
  }
}



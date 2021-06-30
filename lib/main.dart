// @dart=2.9
import 'package:dailydiary/home.dart';
import 'package:dailydiary/testerr/adduser.dart';
import 'package:dailydiary/testerr/all.dart';
import 'package:dailydiary/testerr/getusername.dart';
import 'package:dailydiary/provider1.dart';
import 'package:dailydiary/testerr/trial.dart';
import 'package:dailydiary/testerr/trial2.dart';
import 'package:dailydiary/testerr/userinfo.dart';
import 'package:dailydiary/testerr/welcome.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: MaterialApp(debugShowCheckedModeBanner: false,
home:Home1(),
      ),
    );
  }
}



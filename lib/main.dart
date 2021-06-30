// @dart=2.9
import 'package:dailydiary/homes/home1.dart';
import 'package:dailydiary/homes/home2.dart';
import 'package:dailydiary/homes/home3.dart';
import 'package:dailydiary/testerr/adduser.dart';
import 'package:dailydiary/testerr/all.dart';
import 'package:dailydiary/testerr/getusername.dart';
import 'package:dailydiary/provider1.dart';
import 'package:dailydiary/testerr/trial.dart';
import 'package:dailydiary/testerr/trial2.dart';
import 'package:dailydiary/testerr/userinfo.dart';
import 'package:dailydiary/testerr/welcome.dart';
import 'package:dailydiary/welcomes/welcome1.dart';
import 'package:dailydiary/welcomes/welcome2.dart';
import 'package:dailydiary/welcomes/welcome3.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
Widget chcktime(){
  if(date1>5 && date1<12) return Welcome1();
  else if(date1>12 && date1<15) return Welcome2();
  return Welcome3();
}

DateTime now1 = new DateTime.now();
int date1 = now1.hour;


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

 return
       ChangeNotifierProvider(create:(context)=>Provider1(),
         child: MaterialApp(debugShowCheckedModeBanner: false,
home:Welcome(),

    ),
       );
  }
}



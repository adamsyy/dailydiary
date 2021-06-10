import 'package:dailydiary/provider1.dart';
import 'package:dailydiary/trial2.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
// ignore: implementation_imports
import 'package:flutter/src/widgets/framework.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

final fire = FirebaseFirestore.instance;
final auth = FirebaseAuth.instance;

class Trial extends StatefulWidget {
  @override
  _TrialState createState() => _TrialState();
}

class _TrialState extends State<Trial> {
  void loaddata() {
    fire.collection('user').doc('f58uYe39a25pfxEe8WnV').get().then((snapshot) {
      setState(() {
        print(snapshot.data());
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyanAccent,
      ),
      body: Column(
        children: [
          Text(Provider.of<Provider1>(context).displayperu),
          SizedBox(
            height: 20,
          ),
          TextField(
            onChanged: (value) {
              Provider.of<Provider1>(context, listen: false).tofire = value;
              print(Provider.of<Provider1>(context, listen: false).tofire);
            },
            obscureText: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Password',
            ),
          ),
          ElevatedButton(
              onPressed: () {
                fire.collection('user').doc('user1').set({
                  "kilo": "23",
                });
              },
              child: Text('clcij here')),
          ElevatedButton(onPressed: loaddata, child: Text('clcij here')),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    PageRouteBuilder(
                        transitionDuration: Duration(microseconds: 2000),
                        transitionsBuilder: (BuildContext context,
                            Animation<double> animation,
                            Animation<double> secanimation,
                            Widget child) {
                          animation=CurvedAnimation(parent: animation,curve: Curves.elasticInOut);
                          return ScaleTransition(
                            scale: animation,
                            child: child,
                            alignment: Alignment.center,
                          );
                        },
                        pageBuilder: (BuildContext context,
                            Animation<double> animation,
                            Animation<double> secanimation) {
                          return Tinder();
                        }));
              },
              child: Text('hloo')),
        ],
      ),
    );
  }
}

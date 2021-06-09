import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swipable/flutter_swipable.dart';

final List data = [
  {'color': Colors.red},
  {'color': Colors.green},
  {'color': Colors.blue},
];

class Tinder extends StatefulWidget {
  @override
  _TinderState createState() => _TinderState();
}

class _TinderState extends State<Tinder> {
  List<Card> cards = [
    Card(color: data[0]['color'],),
    Card(color: data[1]['color'],),
    Card(color: data[2]['color'],),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
    child: Stack(
      children: cards,
    ),
    );
  }
}

class Card extends StatelessWidget {
  final Color color;
  Card({required this.color});

  @override
  Widget build(BuildContext context) {
    return Swipable(
        child: Container(width: MediaQuery.of(context).size.width*0.2,height: MediaQuery.of(context).size.height/3,

      decoration: BoxDecoration(borderRadius: BorderRadius.circular(16),color: color),
    ));
  }
}

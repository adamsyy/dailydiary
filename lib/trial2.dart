import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swipable/flutter_swipable.dart';



class Tinder extends StatefulWidget {
  @override
  _TinderState createState() => _TinderState();
}

class _TinderState extends State<Tinder> {
  List<Card> cards = [
    Card(color:Colors.purple),
    Card(color: Colors.orange),
    Card(color: Colors.yellow,),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(38.0),
        child: Container(
          width: MediaQuery.of(context).size.width*1,height: MediaQuery.of(context).size.height/1.2,

          child: Stack(
          children: cards,
        ),
        ),
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
        child: Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(16),color: color),
    ));
  }
}

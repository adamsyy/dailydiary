import 'package:dailydiary/provider1.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class Trial extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Center(child: Text(Provider.of<Provider1>(context).a.toString())),
    );
  }
}

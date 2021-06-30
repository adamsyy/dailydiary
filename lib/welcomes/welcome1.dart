import 'package:dailydiary/homes/home1.dart';
import 'package:dailydiary/homes/home3.dart';
import 'package:dailydiary/provider1.dart';
import 'package:dailydiary/services/moviee.dart';
import 'package:dailydiary/services/noos.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Welcome1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Image.network(
            Provider.of<Provider1>(context, listen: false).displaypic,
            fit: BoxFit.cover),
        centerTitle: true,
      ),
      body: Container(
        decoration: new BoxDecoration(
            gradient: new LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(255, 25,178,238),
                Color.fromARGB(255, 21,236,229)
              ],
            )),
        child: Column(
          children: [
            SizedBox(
              height: 35,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 26),
              child: Text('G O O D   M O R N I N G',
                  style: TextStyle(fontWeight: FontWeight.w100, fontSize: 30)),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Text(
                  Provider.of<Provider1>(context, listen: false).displayperu,
                  style: TextStyle(fontWeight: FontWeight.w900, fontSize: 30)),
            ),
            Divider(
              thickness: 2,
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return News();
                    }));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      color: Colors.black,
                      height: 100,
                    
                      child: Row(
                        children: [
                          Image.network(
                              'https://imgr.search.brave.com/PB7ZEkhE5wAucLRVl5Do3oW1NQJ0ZJalxxY0UdR0ikQ/fit/1200/675/no/1/aHR0cHM6Ly93d3cu/dHJhaWxlcmFkZGlj/dC5jb20vYXJ0aWNs/ZS93cC1jb250ZW50/L3VwbG9hZHMvMjAy/MC8wNC93d2Utd3Jl/c3RsZXJzLWluLW1v/dmllcy5qcGc'),
                          Center(
                              child: Text(
                                ' Todays Headlines',
                                style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.w900,
                                    fontSize: 22),
                              ))
                        ],
                      ),
                    ),
                  ),
                ),
                GestureDetector(onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Home1();
                  }));
                },
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      height: 100,
                      color: Colors.black87,
                      child: Row(
                        children: [
                          Image.network(
                            'https://imgr.search.brave.com/-F5po-3RVnJJ3hTPlvBoaVP1sXsqI6fGP2h6ByLN-XQ/fit/1200/630/no/1/aHR0cHM6Ly9pbWFn/ZXMub2xlLmNvbS5h/ci8yMDIwLzEyLzI1/L2NkdmhEcUdfNl8x/MjAweDYzMF9fMS5q/cGc',
                            width: 180,
                          ),
                          Center(
                              child: Text(
                                '        Hungry?',
                                style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.w900,
                                    fontSize: 22),
                              ))
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

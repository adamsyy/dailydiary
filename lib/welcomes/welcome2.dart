import 'package:dailydiary/homes/home2.dart';
import 'package:dailydiary/homes/home3.dart';
import 'package:dailydiary/provider1.dart';
import 'package:dailydiary/services/moosic.dart';
import 'package:dailydiary/services/moviee.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Welcome2 extends StatelessWidget {
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
      body: Column(
        children: [
          SizedBox(
            height: 35,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 26),
            child: Text('G O O D   A F T E R N O O N',
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
                    return Moosic();
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
                            'https://imgr.search.brave.com/2TYJLTtpt22spzHeb7K7OGq7Pj_4jp_rTveRWHJMDQE/fit/1200/720/no/1/aHR0cHM6Ly9pLnl0/aW1nLmNvbS92aS9j/enBXYUpRXzlrcy9t/YXhyZXNkZWZhdWx0/LmpwZw'),
                        Center(
                            child: Text(
                              '       Relax',
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
                  return Home2();
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
                          'https://imgr.search.brave.com/Uo-xIDB5SK0dumpilyVMWjIyRlaN3FrI_5CEiNZpt0A/fit/1200/804/no/1/aHR0cDovL2pmd29u/bGluZS5jb20vd3At/Y29udGVudC91cGxv/YWRzLzIwMTYvMDQv/TWFsYWJhci1CaXJp/eWFuaS1KRlctbWFn/YXppbmUuanBn',
                          width: 180,
                        ),
                        Center(
                            child: Text(
                              '   Really Hungry?',
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
    );
  }
}

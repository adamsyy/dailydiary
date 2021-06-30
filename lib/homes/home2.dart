import 'dart:convert';
import 'package:dailydiary/bottom.dart';
import 'package:dailydiary/products/details_content.dart';
import 'package:dailydiary/testerr/welcome.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:dailydiary/apis/baseclient.dart';
import 'package:dailydiary/apis/model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tindercard/flutter_tindercard.dart';
import 'package:http/http.dart';
import '../main.dart';
import '../products/details.dart';
import '../apis/api_manager.dart';

var i=0;
var currentIndex = 0;
List<IconData> listOfIcons = [
  Icons.home_rounded,

  Icons.emoji_food_beverage

];

List<String> listOfTitles = [
  'Home',
  'Food',

];
final url = 'https://recipesapi.herokuapp.com/api/v2/categories';
Detailscontent details=Detailscontent();


CardController controller=new CardController();


class Home2 extends StatefulWidget {

  @override
  _Home1State createState() => _Home1State();
}

class _Home1State extends State<Home2> {


  @override
  void initState() {
    // TODO: implement initState
    super.initState();


  }

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Scaffold(appBar: AppBar(backgroundColor: Colors.black87,),
      body: Container(
        child: TinderSwapCard(
          swipeUp: true,
          swipeDown: true,
          orientation: AmassOrientation.RIGHT,
          totalNum: details.lunchdetails.length,
          stackNum: 10,
          swipeEdge: 4.0,
          maxWidth: MediaQuery.of(context).size.width * 0.9,
          maxHeight: MediaQuery.of(context).size.width * 1.2,
          minWidth: MediaQuery.of(context).size.width * 0.8,
          minHeight: MediaQuery.of(context).size.width * 0.1,
          cardBuilder: (context, index) => Card(
            child: SingleChildScrollView(scrollDirection: Axis.vertical,
              child:   Column(crossAxisAlignment: CrossAxisAlignment.start,

                  children:[  Center(child: Image.network(details.lunchdetails[index].image)),
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.only(left: 3),
                      child: Text('${details.lunchdetails[index].name}',style: TextStyle(fontSize: 26,fontWeight: FontWeight.w900),),
                    ),
                    SizedBox(height: 7,),
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Text('${details.lunchdetails[index].price}',style: TextStyle(fontSize: 13,fontWeight: FontWeight.w400),),
                    ),





                  ]),
            ),
          ),
          cardController: controller = CardController(),
          swipeUpdateCallback: (DragUpdateDetails details, Alignment align) {
            /// Get swiping card's alignment
            if (align.x < 0) {
              print('lefttt');
              if(i==7){i=0;}
            } else if (align.x > 0) {
              print('right');
              if(i==7){i=0;}
            }
          },
          swipeCompleteCallback:
              (CardSwipeOrientation orientation, int index) {
            /// Get orientation & index of swiped card!
          },
        ),
      ),
      bottomNavigationBar:  Container(

        height: _width * .155,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(.1),
              blurRadius: 30,
              offset: Offset(0, 10),
            ),
          ],
          borderRadius: BorderRadius.circular(50),
        ),
        child: ListView.builder(
          itemCount: 2,
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.symmetric(horizontal: _width * .02),
          itemBuilder: (context, index) => InkWell(
            onTap: () {
              setState(() {
                currentIndex = index;
                HapticFeedback.lightImpact();
              });
            },
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            child: Stack(
              children: [
                AnimatedContainer(
                  duration: Duration(seconds: 1),
                  curve: Curves.fastLinearToSlowEaseIn,
                  width: index == currentIndex ? _width * .52 : _width * .58,
                  alignment: Alignment.center,
                  child: AnimatedContainer(
                    duration: Duration(seconds: 1),
                    curve: Curves.fastLinearToSlowEaseIn,
                    height: index == currentIndex ? _width * .12 : 0,
                    width: index == currentIndex ? _width * .52 : 0,
                    decoration: BoxDecoration(
                      color: index == currentIndex
                          ? Colors.blueAccent.withOpacity(.2)
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
                AnimatedContainer(
                  duration: Duration(seconds: 1),
                  curve: Curves.fastLinearToSlowEaseIn,
                  width: index == currentIndex ? _width * .41 : _width * .28,
                  alignment: Alignment.center,
                  child: Stack(
                    children: [
                      Row(
                        children: [
                          AnimatedContainer(
                            duration: Duration(seconds: 1),
                            curve: Curves.fastLinearToSlowEaseIn,
                            width: index == currentIndex ? _width * .13 : 0,
                          ),
                          AnimatedOpacity(
                            opacity: index == currentIndex ? 1 : 0,
                            duration: Duration(seconds: 1),
                            curve: Curves.fastLinearToSlowEaseIn,
                            child: Text(
                              index == currentIndex
                                  ? '${listOfTitles[index]}'
                                  : '',
                              style: TextStyle(
                                color: Colors.blueAccent,
                                fontWeight: FontWeight.w600,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          AnimatedContainer(
                            duration: Duration(seconds: 1),
                            curve: Curves.fastLinearToSlowEaseIn,
                            width: index == currentIndex ? _width * .03 : 20,
                          ),
                          GestureDetector(onTap: (){
                            print('heheh');
                            Get.to(Welcome());
                          },
                            child: Icon(
                              listOfIcons[index],
                              size: _width * .076,
                              color: index == currentIndex
                                  ? Colors.blueAccent
                                  : Colors.black26,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),









    );
  }
}

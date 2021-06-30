import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dailydiary/provider1.dart';
import 'package:dailydiary/testerr/trial.dart';
import 'package:dailydiary/testerr/trial2.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:provider/provider.dart';
final fire=FirebaseFirestore.instance;


bool issignedin = false;
final GoogleSignIn googleSignIn = GoogleSignIn();

class Welcome extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Welcome> {
  login() async {
    await googleSignIn.signIn();
    setState(() {
      issignedin = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.network(
            'https://www.99images.com/photos/wallpapers/3d-abstract/minimalist-black-phoneandroid-iphone-desktop-hd-backgrounds-wallpapers-1080p-4k-je1ci.jpg?v=1615228089',
            height: MediaQuery.of(context).size.height / 1.5,
          ),
          Padding(
            padding: const EdgeInsets.all(28.0),
            child: GestureDetector(
              onTap: ()async {
                await Provider.of<Provider1>(context, listen: false).login1();
                if (await Provider.of<Provider1>(context, listen: false)
                    .googleSignIn1
                    .isSignedIn()) { print('//////////');
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) {
                        return Trial();

                      }));
                }
              },
              child: welcomescreenbuttons(
                text: 'login',
                iconname: FontAwesomeIcons.google,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(28.0),
            child: GestureDetector(
                onTap: () {

                  googleSignIn.signOut();
                },
                child: welcomescreenbuttons(
                  text: 'register ',
                  iconname: FontAwesomeIcons.user,
                )),
          ),
        ],
      ),
    );
  }
}

class welcomescreenbuttons extends StatelessWidget {
  String text;
  IconData iconname;
  welcomescreenbuttons({required this.text, required this.iconname});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(text),
          Icon(
            iconname,
            color: Colors.black,
            size: 10,
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';


final GoogleSignIn googleSignIn=GoogleSignIn();


class Welcome extends StatefulWidget {


  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(onTap: (){},
            child: Container(
          height: 100,
          child: Image.network(
              'https://res.cloudinary.com/practicaldev/image/fetch/s--ZUMyUgWZ--/c_imagga_scale,f_auto,fl_progressive,h_1080,q_auto,w_1080/https://dev-to-uploads.s3.amazonaws.com/i/am6lv2x37bole6x4poz3.jpg'),
        )),
      ),
    );
  }
}

import 'package:dailydiary/trial.dart';
import 'package:dailydiary/trial2.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

bool issignedin=false;
final GoogleSignIn googleSignIn=GoogleSignIn();


class Welcome extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Welcome> {

  login()async{
   await googleSignIn.signIn();
setState(() {
  issignedin=true;
});
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: GestureDetector(onTap: ()async{
              await login();
              GoogleSignInAccount? oi=googleSignIn.currentUser;
              print(oi!.photoUrl);
              issignedin?Navigator.push(context, MaterialPageRoute(builder: (context){
                return Trial();
              })):Navigator.push(context, MaterialPageRoute(builder: (context){
                return Trial2();
              }));
            },
                child: Container(
              height: 100,
              child: Image.network(
                  'https://res.cloudinary.com/practicaldev/image/fetch/s--ZUMyUgWZ--/c_imagga_scale,f_auto,fl_progressive,h_1080,q_auto,w_1080/https://dev-to-uploads.s3.amazonaws.com/i/am6lv2x37bole6x4poz3.jpg'),
            )),
          ),
          GestureDetector( onTap: (){
           googleSignIn.signOut();
          },
            child: Text('hloo'),
          )
        ],
      ),
    );
  }
}

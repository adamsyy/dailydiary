import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class Provider1 with ChangeNotifier{


  int a=3;

late String displayperu='jfn';

late String tofire;

  bool issignedin1 = false;
  final GoogleSignIn googleSignIn1 = GoogleSignIn();


  login1() async {
    await googleSignIn1.signIn();
      issignedin1 = true;
      var currentuser=googleSignIn1.currentUser;
      if(currentuser!=null)
      {displayperu=currentuser.displayName!;}
      notifyListeners();

  }


}


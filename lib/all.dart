import 'package:flutter/material.dart';

// Import the firebase_core and cloud_firestore plugin
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
var _controller = TextEditingController();
var va;
TextEditingController textEditingController=TextEditingController();
CollectionReference collectionReference=FirebaseFirestore.instance.collection('users');
late Future<QuerySnapshot> futuresearch;


class All extends StatefulWidget {


  @override
  _AllState createState() => _AllState();
}

class _AllState extends State<All> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(appBar: AppBar(),
      body: SingleChildScrollView(scrollDirection: Axis.vertical,
        child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
         crossAxisAlignment: CrossAxisAlignment.stretch ,
          children: [
            RaisedButton(child: Text('Fetch data'),onPressed:fetchdata,),
            RaisedButton(child: Text('add data'),onPressed:adddata('sreejith'),),
            RaisedButton(child: Text('update data'),onPressed:updatedata,),
            RaisedButton(child: Text('delete data'),onPressed:deletedata,),
            TextField(controller: textEditingController,onChanged: (value)async{
              va=value;
              var boi=await collectionReference.where('peru',isGreaterThanOrEqualTo: va).get();
                  for(var doc in boi.docs){
                    print(doc.data());
                  }

            },),
            SizedBox(height: 100,),
            Text('data will be shown here'),
           // ListView.builder(scrollDirection: Axis.vertical,
           //     shrinkWrap: true,itemCount:va.length,itemBuilder: (BuildContext context,int index){
           //   return Column(
           //     children: [
           //       Text(va[index]),
           //     ],
           //   );
           // })
    // buildsearchResults(),


          ],
        ),
      ),
    );
  }

   adddata(String peruvalue) {
    CollectionReference collectionReference=FirebaseFirestore.instance.collection('users');
    collectionReference.add({'peru':'$peruvalue'});
    buildsearchResults(peruvalue);
  }

   fetchdata() {
     CollectionReference collectionReference=FirebaseFirestore.instance.collection('users');
     collectionReference.snapshots().listen((snapshot) {

       setState(() {
         var datax=snapshot.docs[0].data() as Map;

         print(datax['peru']);
       });
     });
  }

   deletedata() async{
     CollectionReference collectionReference=FirebaseFirestore.instance.collection('users');
     QuerySnapshot querySnapshot=await collectionReference.get();
     querySnapshot.docs[0].reference.delete();
  }

   updatedata()async{
     CollectionReference collectionReference=FirebaseFirestore.instance.collection('users');
     QuerySnapshot querySnapshot=await collectionReference.get();
     querySnapshot.docs[0].reference.update({'peru':'eruvalue'});
     
  }


  late Future<QuerySnapshot> searchResultsfuture;

   searchh(String query) {
     CollectionReference collectionReference=FirebaseFirestore.instance.collection('users');
     Future<QuerySnapshot> users=collectionReference.where('peru',isGreaterThanOrEqualTo:query).get();
setState(() {
  searchResultsfuture=users;
});
  }

  buildsearchResults(String name)async{
    

  }
}

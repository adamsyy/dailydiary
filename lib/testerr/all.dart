import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


late Future<QuerySnapshot> futuresearch;


class All extends StatefulWidget {


  @override
  _AllState createState() => _AllState();
}

class _AllState extends State<All> {
  TextEditingController textEditingController=TextEditingController();

  String va="";
  String name="";
  @override
  Widget build(BuildContext context) {
    Stream<QuerySnapshot<Map<String,dynamic>>> stream=FirebaseFirestore.instance.collection("users").where("peru",isGreaterThanOrEqualTo: va).snapshots();

    return Scaffold(appBar: AppBar(),
      body: SingleChildScrollView(scrollDirection: Axis.vertical,
        child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch ,
          children: [
            RaisedButton(child: Text('Fetch data'),onPressed:fetchdata,),
            RaisedButton(child: Text('add data'),onPressed:adddata('sreejith'),),
            RaisedButton(child: Text('update data'),onPressed:updatedata,),
            RaisedButton(child: Text('delete data'),onPressed:deletedata,),
            TextField(controller: textEditingController,onSubmitted: (value)async{
              setState(() {
                va=value;
              });}),
            StreamBuilder(
                stream:stream,
                builder: (context,AsyncSnapshot<QuerySnapshot<Map<String,dynamic>>> snapshot){
                  if(snapshot.hasData){
                    if(snapshot.data!=null){
                      List<QueryDocumentSnapshot> data =snapshot.data!.docs ;
                      print(data.length);
                      return ListView.builder(scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          itemCount:data.length,
                          itemBuilder: (BuildContext context,int index){
                            // print(data[index]["peru"]);

                            return Column(
                              children: [
                                Text(data[index]["peru"]),
                              ],
                            );
                          });
                    }
                    return Center(child: CircularProgressIndicator(),);
                  }else{
                    return Center(child: CircularProgressIndicator(),);
                  }
                })
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

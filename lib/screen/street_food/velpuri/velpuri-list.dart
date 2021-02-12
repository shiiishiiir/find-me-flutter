import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class VelpuriList extends StatefulWidget {
  static const routeName = '/velpuri-list';

  @override
  _VelpuriListState createState() => _VelpuriListState();
}

class _VelpuriListState extends State<VelpuriList> {
  final databaseReference = Firestore.instance;
  var patientAndAppointmentId;
  List<dynamic> chotpotiData = List();

  Future reportList() async {
    await databaseReference.collection("velpuri").getDocuments().then((value) {
      chotpotiData = value.documents;
      return value.documents;
    });
  }

  @override
  Widget build(BuildContext context) {
    print(chotpotiData);
    return Scaffold(
      appBar: AppBar(
        title: Text('Velpuri List'),
      ),
      body: FutureBuilder(
        future: reportList(),
        builder: (context, snap) {
          if (ConnectionState.done != snap.connectionState) {
            return SizedBox(
              child: Center(
                child: CircularProgressIndicator(),
              ),
            );
          } else
            return ListView.builder(
              itemCount: chotpotiData == null ? 0 : chotpotiData.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  child: ListTile(
                    leading: Image.network(chotpotiData[index]["image"], width: 80.0,),
                    title: Text(chotpotiData[index]["title"]),
                    subtitle: Text(chotpotiData[index]["phone"]),
                  ),
                );
              },
            );
        },
      ),
    );
  }
}

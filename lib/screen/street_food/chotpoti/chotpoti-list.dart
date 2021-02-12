import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ChotpotiList extends StatefulWidget {
  static const routeName = '/chotpoti-list';

  @override
  _ChotpotiListState createState() => _ChotpotiListState();
}

class _ChotpotiListState extends State<ChotpotiList> {
  final databaseReference = Firestore.instance;
  var patientAndAppointmentId;
  List<dynamic> chotpotiData = List();

  Future reportList() async {
    await databaseReference.collection("chotpoti").getDocuments().then((value) {
      chotpotiData = value.documents;
      return value.documents;
    });
  }

  @override
  Widget build(BuildContext context) {
    print(chotpotiData);
    return Scaffold(
      appBar: AppBar(
        title: Text('Chotpoti List'),
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

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class VegetableList extends StatefulWidget {
  static const routeName = '/vegetable-list';

  @override
  _VegetableListState createState() => _VegetableListState();
}

class _VegetableListState extends State<VegetableList> {
  final databaseReference = Firestore.instance;
  var patientAndAppointmentId;
  List<dynamic> chotpotiData = List();

  Future reportList() async {
    await databaseReference
        .collection("vegetable")
        .getDocuments()
        .then((value) {
      chotpotiData = value.documents;
      return value.documents;
    });
  }

  @override
  Widget build(BuildContext context) {
    print(chotpotiData);
    return Scaffold(
      appBar: AppBar(
        title: Text('vegetable List'),
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
                    leading: Image.network(
                      chotpotiData[index]["image"],
                      width: 80.0,
                    ),
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

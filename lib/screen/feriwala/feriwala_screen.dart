import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ReportListScreen extends StatefulWidget {
  static const routeName = '/report-list';

  @override
  _ReportListScreenState createState() => _ReportListScreenState();
}

class _ReportListScreenState extends State<ReportListScreen> {
  final databaseReference = Firestore.instance;
  var patientAndAppointmentId;
  List<dynamic> prescriptionData = List();

  Future prescriptionList() async {
    await databaseReference
        .collection("reports")
        .where("PatientId", isEqualTo: "${(patientAndAppointmentId['patientId']).toString()}")
        .getDocuments()
        .then((value) {
      prescriptionData = value.documents;
      return value.documents;
    });

  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    setState(() {
      patientAndAppointmentId = ModalRoute.of(context).settings.arguments;
      prescriptionList();
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Report List'),
        ),
        body: FutureBuilder(
          future: prescriptionList(),
          builder: (context, snap){
            if(ConnectionState.done != snap.connectionState){
              return SizedBox(
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              );
            }else return ListView.builder(
              itemCount: prescriptionData == null ? 0 : prescriptionData.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                    child: InkWell(
                      onTap: () {
                        // Navigator.of(context).pushNamed(ReportDetailsScreen.routeName, arguments: prescriptionData[index]["ReportId"]);
                      },
                      child: Padding(
                          padding: EdgeInsets.all(1.0),
                          child: Column(
                            children: <Widget>[
                              InkWell(
                                splashColor: Colors.blue.withAlpha(30),
                                child: Container(
                                  // padding: const EdgeInsets.symmetric(vertical: 20.0),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(8.0),
                                    boxShadow: <BoxShadow>[
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.1),
                                        offset: Offset(1.1, 1.1),
                                        blurRadius: 5.0,
                                      ),
                                    ],
                                  ),
                                  child: Row(
                                    children: <Widget>[
                                      Expanded(
                                        flex: 3,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            ListTile(
                                              title: Text('${prescriptionData[index]["name"]}'),
                                              subtitle: Text('${prescriptionData[index]["DateTime"]}'),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          )
                      ),
                    )
                );
              },
            );
          },
        ) //center
    );
  }
}
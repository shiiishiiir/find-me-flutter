import 'package:findme/screen/hospital/hospital_page.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class Hospital extends StatefulWidget {
  static const routeName = '/hospital';

  @override
  _HospitalState createState() => _HospitalState();
}

class _HospitalState extends State<Hospital> {
  var latitude;
  var longitude;

  Future<void> _currentLocation() async {
    Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    setState(() {
      latitude = position.latitude;
      longitude = position.longitude;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _currentLocation();
  }

  @override
  Widget build(BuildContext context) {
    print(latitude);
    print(longitude);
    return Scaffold(
      appBar: AppBar(
        title: Text('Find Hospital '),
        centerTitle: true,
      ),
      body: Center(
        child: FlatButton(
          onPressed: () async {
            await _currentLocation();
            print('shishir');
            Navigator.of(context).pushNamed(
              HospitalPage.routeName,
              arguments: {'lati': latitude, 'long': longitude},
            );
          },
          color: Colors.indigo[100],
          textColor: Colors.white,
          child: Icon(
            Icons.search,
            size: 34,
          ),
          padding: EdgeInsets.all(36),
          shape: CircleBorder(),
        ),
      ),
    );
  }
}

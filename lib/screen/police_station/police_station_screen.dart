import 'package:findme/screen/police_station/police_page.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class PoliceStation extends StatefulWidget {
  static const routeName = '/police-station';

  @override
  _PoliceStationState createState() => _PoliceStationState();
}

class _PoliceStationState extends State<PoliceStation> {
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
        title: Text('Find Police Station'),
        centerTitle: true,
      ),
      body: Center(
        child: FlatButton(
          onPressed: () async {
            await _currentLocation();
            print('shishir');
            Navigator.of(context).pushNamed(
              PolicePage.routeName,
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

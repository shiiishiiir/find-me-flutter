import 'package:findme/screen/mosque/mosque_page.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class Mosque extends StatefulWidget {
  static const routeName = '/mosque';

  @override
  _MosqueState createState() => _MosqueState();
}

class _MosqueState extends State<Mosque> {
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
        title: Text('Find Mosque '),
        centerTitle: true,
      ),
      body: Center(
        child: FlatButton(
          onPressed: () async {
            await _currentLocation();
            print('shishir');
            Navigator.of(context).pushNamed(
              MosquePage.routeName,
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

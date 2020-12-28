import 'dart:convert';
import 'package:findme/model/place.dart';
import 'package:findme/screen/Police_station/place_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HospitalPage extends StatefulWidget {
  static const routeName = '/Hospital-page';

  @override
  State createState() => new Hospitalstate();
}

class Hospitalstate extends State<HospitalPage> {
  var _isInit = true;
  var _isLoading = false;
  String _currentPlaceId;

  List<PlaceDetail> _places;

  Future<void> getNearbyPlaces(latitude, longitude) async {
    var url =
        "https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=$latitude,$longitude&radius=5000&types=Hospital&key=AIzaSyDLNRo0MW3EEwVDGjsIH-H-_GXuTVKEiVI";
    print(url);
    var reponse = await http.get(url, headers: {"Accept": "application/json"});

    List data = json.decode(reponse.body)["results"];

    var places = <PlaceDetail>[];
    data.forEach((f) => places.add(new PlaceDetail(f["place_id"], f["name"],
        f["icon"], f["rating"].toString(), f["vicinity"])));

    _places = places;
  }

  @override
  void didChangeDependencies() {
    var args = ModalRoute.of(context).settings.arguments as Map;
    print(args);
    if (_isInit) {
      setState(() {
        _isLoading = true;
      });
      this.getNearbyPlaces(args['lati'], args['long']).then((_) {
        setState(() {
          _isLoading = false;
        });
      });
    }
    _isInit = false;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    onItemTapped = () => Navigator.of(context).push(
          new MaterialPageRoute(
            builder: (BuildContext context) =>
                new PlaceDetailPage(_currentPlaceId),
          ),
        );

    return Scaffold(
      appBar: AppBar(
        title: Text('Nearby Hospital'),
      ),
      body: _createContent(),
    );
  }

  final _biggerFont = const TextStyle(fontSize: 18.0);
  Widget _createContent() {
    if (_places == null) {
      return new Center(
        child: new CircularProgressIndicator(),
      );
    } else {
      return new ListView(
        children: _places.map((f) {
          return new Card(
            child: new ListTile(
                title: new Text(
                  f.name,
                  style: _biggerFont,
                ),
                leading: new Image.network(f.icon),
                subtitle: new Text(f.vicinity),
                onTap: () {
                  _currentPlaceId = f.id;
                  // onItemTapped();
                  handleItemTap(f);
                }),
          );
        }).toList(),
      );
    }
  }

  handleItemTap(PlaceDetail place) {
    Navigator.push(
      context,
      new MaterialPageRoute(
        builder: (BuildContext context) => new PlaceDetailPage(place.id),
      ),
    );
  }

  VoidCallback onItemTapped;
}

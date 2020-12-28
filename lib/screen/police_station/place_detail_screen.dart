import 'dart:convert';
import 'package:findme/model/place.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class PlaceDetailPage extends StatefulWidget {
  final String _place_id;
  PlaceDetailPage(this._place_id);
  @override
  State createState() => new PlaceDetailState();
}

class PlaceDetailState extends State<PlaceDetailPage> {
  var _isInit = true;
  var _isLoading = false;
  PlaceDetail _place;

  Future<void> getPlace(String placeId) async {
    var detailUrl =
        "https://maps.googleapis.com/maps/api/place/details/json?key=AIzaSyDLNRo0MW3EEwVDGjsIH-H-_GXuTVKEiVI&placeid=$placeId";
    var response =
        await http.get(detailUrl, headers: {"Accept": "application/json"});
    var result = json.decode(response.body)["result"];

    List<dynamic> weekdays = [];
    if (result["opening_hours"] != null)
      weekdays = result["opening_hours"]["weekday_text"];
    _place = PlaceDetail(
      result["place_id"],
      result["name"],
      result["icon"],
      result["rating"].toString(),
      result["vicinity"],
      result["formatted_address"],
      result["international_phone_number"],
      weekdays,
    );
  }

  @override
  void didChangeDependencies() {
    var args = ModalRoute.of(context).settings.arguments as Map;
    if (_isInit) {
      setState(() {
        _isLoading = true;
      });
      this.getPlace(widget._place_id).then((_) {
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
    if (_place == null) {
      return new Material(
        color: Colors.greenAccent,
        child: new Scaffold(
          appBar: new AppBar(
            title: new Text("Loading..."),
          ),
          body: new Container(
            child: new Center(
                child: new Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16.0),
              child: new CircularProgressIndicator(),
            )),
          ),
        ),
      );
    }
    return new Material(
      child: new Scaffold(
        appBar: new AppBar(
          title: new Text(_place.name),
        ),
        body: new SingleChildScrollView(
          child: new Padding(
            padding: const EdgeInsets.all(16.0),
            child: new Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  _place.name,
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 22.0),
                ),
                new Divider(
                  height: 30.0,
                ),
                getCard(
                    "Address ", _place.formatted_address, Icons.location_on),
                getCard("Working Hours ", _place.weekday_text.join("\n"),
                    Icons.work),
              ],
            ),
          ),
        ),
      ),
    );
  }

  getCard(String header, String content, IconData iconData) {
    return new Card(
      color: Colors.white,
      child: new Container(
        child: new Padding(
          padding: const EdgeInsets.all(10.0),
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              new Row(
                children: <Widget>[
                  new Text(header,
                      style: new TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 18.0)),
                  new Icon(
                    iconData,
                  )
                ],
              ),
              new Padding(
                padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                child: new Text(content, textAlign: TextAlign.start),
              )
            ],
          ),
        ),
      ),
    );
  }
}

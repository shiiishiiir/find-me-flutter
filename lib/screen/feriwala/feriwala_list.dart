import 'package:findme/screen/feriwala/fruits/fruits-list.dart';
import 'package:findme/screen/feriwala/shak_shobji/shak-shobji-list.dart';
import 'package:findme/screen/feriwala/vegetable/vegetable-list.dart';
import 'package:flutter/material.dart';

class FeriwalaList extends StatelessWidget {
  static const routeName = '/feriwala-list';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Feriwala List'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 8.0,
          ),
          ListTile(
            title: Text('Fruits'),
            leading: Image.network(
                'https://www.alokitosakal.com/wp-content/uploads/2020/02/7-13.jpg'),
            onTap: () {
              Navigator.of(context).pushNamed(FruitsList.routeName);
            },
          ),
          SizedBox(
            height: 8.0,
          ),
          ListTile(
            title: Text('Shak Shobji'),
            leading: Image.network(
                'https://i.ytimg.com/vi/x2-_fB70XCU/maxresdefault.jpg'),
            onTap: () {
              Navigator.of(context).pushNamed(ShakShobjiList.routeName);
            },
          ),
          SizedBox(
            height: 8.0,
          ),
          ListTile(
            title: Text('Vegetable'),
            leading: Image.network(
                'https://i.ytimg.com/vi/d-lusqDQYYo/maxresdefault.jpg'),
            onTap: () {
              Navigator.of(context).pushNamed(VegetableList.routeName);
            },
          ),
        ],
      ),
    );
  }
}

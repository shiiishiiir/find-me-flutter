import 'package:findme/screen/street_food/chotpoti/chotpoti-list.dart';
import 'package:findme/screen/street_food/fuchka/fuchka-list.dart';
import 'package:findme/screen/street_food/vajapora/vajapora-list.dart';
import 'package:findme/screen/street_food/velpuri/velpuri-list.dart';
import 'package:flutter/material.dart';

class StreetFoodList extends StatelessWidget {
  static const routeName = '/street-food-list';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Street Food List'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 8.0,
          ),
          ListTile(
            title: Text('Chotpoti'),
            leading: Image.network(
                'https://i.ytimg.com/vi/XEwTy_sBaQA/maxresdefault.jpg'),
            onTap: () {
              Navigator.of(context).pushNamed(ChotpotiList.routeName);
            },
          ),
          SizedBox(
            height: 8.0,
          ),
          ListTile(
            title: Text('Fuchka'),
            leading: Image.network(
                'https://i.ytimg.com/vi/BTkOwI84EQo/maxresdefault.jpg'),
            onTap: () {
              Navigator.of(context).pushNamed(FuchkaList.routeName);
            },
          ),
          SizedBox(
            height: 8.0,
          ),
          ListTile(
            title: Text('Vajapora'),
            leading: Image.network(
                'https://i.ytimg.com/vi/RG8u3GUSfJk/maxresdefault.jpg'),
            onTap: () {
              Navigator.of(context).pushNamed(VajaporaList.routeName);
            },
          ),
          SizedBox(
            height: 8.0,
          ),
          ListTile(
            title: Text('Velpuri'),
            leading: Image.network(
                'https://www.womenscorner.com.bd/media/imgAll/2020January/velpuri-20200604073104.jpg'),
            onTap: () {
              Navigator.of(context).pushNamed(VelpuriList.routeName);
            },
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final options = ['one', 'two', 'three', 'four', 'five'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Components Temp'),
        ),
        body: ListView(
          children: _createItemsAlt(),
        ));
  }

  // List<Widget> _createItems() {
  //   List<Widget> list = new List<Widget>();
  //   for (String o in options) {
  //     final tempWidget = ListTile(
  //       title: Text(o),
  //     );

  //     list..add(tempWidget)..add(Divider());
  //   }
  //   return list;
  // }

  List<Widget> _createItemsAlt() {
    var l = options.map((o) {
      return Column(
        children: <Widget>[
          ListTile(
            title: Text(o + '!'),
            subtitle: Text('this is a test'),
            leading: Icon(Icons.account_balance_wallet),
            trailing: Icon(Icons.arrow_right),
            onTap: () {},
          ),
          Divider(),
        ],
      );
    }).toList();

    return l;
  }
}

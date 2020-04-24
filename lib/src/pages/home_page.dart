// import 'package:components/src/pages/alert_page.dart';
// import 'package:components/src/pages/avatar_page.dart';
import 'package:components/src/providers/menu_provider.dart';
import 'package:components/src/utils/icon_string_util.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Components'),
      ),
      body: _list(),
    );
  }

  Widget _list() {
    return FutureBuilder(
      future: menuProvider.loadData(),
      initialData: [],
      builder: (BuildContext cxt, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(
          children: _itemsList(snapshot.data, cxt),
        );
      },
    );
  }

  List<Widget> _itemsList(List<dynamic> data, BuildContext cxt) {
    final List<Widget> opts = [];

    data.forEach((d) {
      final tmpWidget = ListTile(
        title: Text(d['texto']),
        leading: getIcon(d['icon']),
        trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blueAccent),
        onTap: () {
          Navigator.pushNamed(cxt, d['ruta']);
          // final route = MaterialPageRoute(builder: (cxt) => AlertPage());
          // Navigator.push(cxt, route);
        },
      );

      opts..add(tmpWidget)..add(Divider());
    });
    return opts;
  }
}

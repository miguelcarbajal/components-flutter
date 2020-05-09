import 'package:flutter/material.dart';

class HomeTempPage extends StatelessWidget {

  final options = ['one', 'two', 'three', 'four', 'five'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Components Test'),
        backgroundColor: Colors.blueAccent,
      ),
      body: ListView(
        children: _createWidgetsWithMap()
      ),
    );
  }

  // List<Widget> _createWidgets() {
  //   List<Widget> list = new List<Widget>();
  //   for (String op in options) {
  //     final tempWidget = ListTile(title: Text(op));
  //     list..add(tempWidget)..add(Divider());
  //   }
  //   return list;
  // }

  List<Widget>_createWidgetsWithMap() {
    return options.map((op) {
      return Column(
        children: <Widget>[
          ListTile(
            title: Text(op + '!'),
            subtitle: Text('Some text'),
            leading: Icon(Icons.account_circle),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {},
          ),
          Divider()
        ],
      );
    }).toList();
  }
}
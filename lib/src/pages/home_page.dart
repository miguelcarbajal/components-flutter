import 'package:flutter/material.dart';
import 'package:components_app/src/providers/menu_provider.dart';
import 'package:components_app/utils/icon_string_util.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Components Home Page'),
        backgroundColor: Colors.cyan,
      ),
      body: _list(),
    );
  }

  Widget _list() {
    return FutureBuilder(
      future: menuProvider.loadData(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(
          children: _itemsList(snapshot.data, context),
        );
      },
    );

  }

  List<Widget> _itemsList(List<dynamic> data, BuildContext context) {
    final List<Widget> opts = [];

    data.forEach((opt) {
      final widgetTemp = ListTile(
        title: Text(opt['texto']),
        leading: getIcon(opt['icon']),
        trailing: Icon(Icons.keyboard_arrow_right, color: Colors.cyan),
        onTap: () {
          Navigator.pushNamed(context, opt['ruta']);

          // Forma de ir a una pagina
          // final route = MaterialPageRoute(
          //   builder: (context) => AlertPage()
          // );
          // Navigator.push(context, route);
        },
      );

      opts..add(widgetTemp)
          ..add(Divider());
    });

    return opts;
  }
}
import 'package:flutter/services.dart';
import 'dart:convert';


class _MenuProvider {
  List<dynamic> opciones = [];

  _MenuProvider(){
    // loadData();
  }

  Future<List<dynamic>> loadData() async {
    final res = await rootBundle.loadString('data/menu_opts.json');
    Map dataMap = json.decode(res);
    opciones = dataMap['rutas'];

    return opciones;
  }
}

final menuProvider = _MenuProvider();
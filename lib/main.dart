import 'package:flutter/material.dart';
import 'package:components_app/src/routes/routes.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Components App',
      initialRoute: '/',
      routes: getApplicationRoutes(),
      // onGenerateRoute: Routes.generateRoute,
    );
  }
}
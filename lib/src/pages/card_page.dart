

import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
        backgroundColor: Colors.yellow,
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          _typeOneCard(),
          SizedBox(height: 30.0),
          _typeTwoCard(),
          SizedBox(height: 30.0),
          _typeOneCard(),
          SizedBox(height: 30.0),
          _typeTwoCard(),
          SizedBox(height: 30.0),
          _typeOneCard(),
          SizedBox(height: 30.0),
          _typeTwoCard(),
          SizedBox(height: 30.0),
          _typeOneCard(),
          SizedBox(height: 30.0),
          _typeTwoCard(),
          SizedBox(height: 30.0),
        ],
      ),
    );
  }

  Widget _typeOneCard() {
    return Card(
      elevation: 2.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0)
      ),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.photo_album, color: Colors.teal,),
            title: Text('Soy el título de ésta tarjeta'),
            subtitle: Text('Soy el subtítulo o descripción de ésta card, lorem ipsum dolor sit amet'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                child: Text('No honey, no'),
                onPressed: () {},
              ),
              FlatButton(
                child: Text('Ok baby'),
                onPressed: () {},
              )
            ],
          )
        ]
      ),
    );
  }

  Widget _typeTwoCard() {
    final card = Container(
      // clipBehavior con esa propiedad deberia hacer que la imagen no se salga del card
      // clipBehavior: Clip.antiAlias,
      child: Column(
        children: <Widget>[
          FadeInImage(
            placeholder: AssetImage('assets/jar-loading.gif'), 
            image: NetworkImage('https://tecnovortex.com/wp-content/uploads/2019/04/wallpaper-engine.jpg'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 250.0,
            fit: BoxFit.cover,
          ),
          // Image(
          //   image: NetworkImage('https://tecnovortex.com/wp-content/uploads/2019/04/wallpaper-engine.jpg'),
          // ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('data'),
          )
        ],
      ),
    );

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black26,
            blurRadius: 2.0,
            spreadRadius: 1.0,
            offset: Offset(1.0, 1.0)
          )
        ]
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: card
      ),
    );
  }

}
import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          _card1(),
          SizedBox(
            height: 30.0,
          ),
          _card2(),
        ],
      ),
    );
  }

  Widget _card1() {
    return Card(
      elevation: 5.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: Column(children: <Widget>[
        ListTile(
          leading: Icon(Icons.photo_album, color: Colors.blue),
          title: Text('Card Title'),
          subtitle: Text(
              'Lorem ipsum dolor sit amet consectetur adipisicing elit. Sed minus asperiores explicabo itaque quo! Ullam dolorum, ratione unde architecto illum dignissimos perspiciatis pariatur deserunt, voluptate libero nesciunt officiis. Saepe, incidunt.'),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            FlatButton(
              child: Text('Cancel'),
              onPressed: () {},
            ),
            FlatButton(
              child: Text('Ok'),
              onPressed: () {},
            )
          ],
        )
      ]),
    );
  }

  Widget _card2() {
    final card = Container(
      child: Column(
        children: <Widget>[
          FadeInImage(
            placeholder: AssetImage('lib/assets/original.gif'),
            image: NetworkImage('https://wallpaperaccess.com/full/112715.jpg'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 300.0,
            fit: BoxFit.cover,
          ),
          // Image(
          //   image: NetworkImage('https://wallpaperaccess.com/full/112715.jpg'),
          // ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text(
                'Lorem ipsum dolor sit amet consectetur adipisicing elit. Sed minus asperiores explicabo itaque quo! Ullam dolorum, ratione unde architecto illum dignissimos perspiciatis pariatur deserunt, voluptate libero nesciunt officiis. Saepe, incidunt.'),
          )
        ],
      ),
    );

    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          color: Colors.white,
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.black26,
              blurRadius: 10.0,
              spreadRadius: 2.0,
              offset: Offset(2.0, -10.0),
            ),
          ]
          // color: Colors.red, // for debugging
          ),
      child: ClipRRect(
        child: card,
        borderRadius: BorderRadius.circular(30.0),
      ),
    );
  }
}

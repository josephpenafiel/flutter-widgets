import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext cxt) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Page'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Show Alert'),
          color: Colors.blue,
          textColor: Colors.white,
          shape: StadiumBorder(),
          onPressed: () => _showAlert(cxt),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.keyboard_return),
        onPressed: () {
          Navigator.pop(cxt);
        },
      ),
    );
  }

  void _showAlert(BuildContext cxt) {
    showDialog(
        context: cxt,
        barrierDismissible: true,
        builder: (cxt) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            title: Text('title'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text('Alert box content'),
                FlutterLogo(size: 100.0),
              ],
            ),
            actions: <Widget>[
              FlatButton(
                child: Text('Cancel'),
                onPressed: () => Navigator.of(cxt).pop(),
              ),
              FlatButton(
                child: Text('Ok'),
                onPressed: () => Navigator.of(cxt).pop(),
              ),
            ],
          );
        });
  }
}

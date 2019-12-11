import 'package:flutter/material.dart';

class MyReservesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: 200,
      child: ListView(
        children: <Widget>[
          AppBar(
            title: Text('Suas Reservas'),
          ),
        ],
      ),
    ));
  }
}

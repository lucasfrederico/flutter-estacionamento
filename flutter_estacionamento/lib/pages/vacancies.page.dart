import 'package:flutter/material.dart';

class VacanciesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: 200,
      child: ListView(
        children: <Widget>[
          AppBar(
            title: Text('Vagas'),
          )
        ],
      ),
    ));
  }
}

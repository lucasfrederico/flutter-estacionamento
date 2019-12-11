import 'package:flutter/material.dart';
import 'package:flutter_estacionamento/models/reserve.model.dart';
import 'package:flutter_estacionamento/services/reserves.service.dart';

class MyReservesPage extends StatelessWidget {
  final ReservesService reservesService = ReservesService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Suas Reservas'),
      ),
      body: FutureBuilder(
        future: reservesService.getAll(),
        builder: (
          BuildContext context,
          AsyncSnapshot<List<Reserve>> snapshot,
        ) {
          if (snapshot.hasData) {
            List<Reserve> reserves = snapshot.data;
            return ListView(
              children: reserves
                  .map(
                    (Reserve post) => ListTile(
                      title: Text(''),
                      subtitle: Text(''),
                    ),
                  )
                  .toList(),
            );
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}

import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_estacionamento/models/reserve.model.dart';
import 'package:flutter_estacionamento/services/reserves.service.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';

final ReservesService reservesService = new ReservesService();
final DateFormat df = DateFormat("dd/MM/yyyy HH:mm");

class MyReservesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Suas Reservas'),
        ),
        body: MyApp());
  }
}

/*class ReservesList extends StatefulWidget {
  @override
  _ReservesListState createState() => _ReservesListState();
}*/

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Future<List<Reserve>> reserves;

  @override
  void initState() {
    super.initState();
    reserves = reservesService.getAll();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fetch Data Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Center(
          child: FutureBuilder<List<Reserve>>(
            future: reserves,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Container(
                  child: ListView.builder(
                    itemCount: snapshot.data.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        margin: EdgeInsets.only(
                          top: 10,
                          left: 30,
                          right: 30,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                          color: snapshot.data[index].active ? Colors.green : Colors.grey,
                        ),
                        child: ListTile(
                          leading: Container(
                            padding: EdgeInsets.only(right: 12.0),
                            decoration: new BoxDecoration(
                              border: new Border(
                                right: new BorderSide(
                                  width: 1.0,
                                  color: Colors.white24,
                                ),
                              ),
                            ),
                            child: Icon(
                              Icons.calendar_today,
                              color: Colors.white,
                            ),
                          ),
                          title: Text(
                            "${df.format(snapshot.data[index].createdDate)}",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          // subtitle: Text("Intermediate", style: TextStyle(color: Colors.white)),
                        ),
                      );
                    },
                  ),
                );
              } else if (snapshot.hasError) {
                return Text("${snapshot.error}");
              }

              return CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }
}

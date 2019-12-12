import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_estacionamento/pages/my-reserves.page.dart';
import 'package:flutter_estacionamento/pages/vacancies.page.dart';

class WelcomePage extends StatelessWidget {
  Future _redirectToMyReserves(BuildContext context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => MyReservesPage()));
  }

  Future _redirectToVacancies(BuildContext context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => VacanciesPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: <Widget>[
            AppBar(
              title: Text('Bem-vindo(a)'),
            ),
            Container(
              margin: EdgeInsets.only(top: 50, left: 30, right: 30),
              height: 200,
              alignment: Alignment.centerLeft,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    child: SizedBox.expand(
                      child: Builder(
                        builder: (ctx) => Container(
                          decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          child: FlatButton(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "Suas Reservas",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                                Container(
                                  child: SizedBox(
                                    child: Icon(Icons.calendar_today),
                                    height: 28,
                                    width: 28,
                                  ),
                                )
                              ],
                            ),
                            onPressed: () => _redirectToMyReserves(ctx),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: SizedBox.expand(
                      child: Builder(
                        builder: (ctx) => Container(
                          decoration: BoxDecoration(
                            color: Colors.lime,
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          child: FlatButton(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "Vagas",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                                Container(
                                  child: SizedBox(
                                    child: Icon(Icons.directions_car),
                                    height: 28,
                                    width: 28,
                                  ),
                                )
                              ],
                            ),
                            onPressed: () => _redirectToVacancies(ctx),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

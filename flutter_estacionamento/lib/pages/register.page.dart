import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_estacionamento/pages/login.page.dart';
import 'package:sweetalert/sweetalert.dart';

class RegisterPage extends StatelessWidget {
  Future _redirectToLogin(BuildContext context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => LoginPage()));
  }

  void _showSuccess(BuildContext context) {
    SweetAlert.show(context,
        title: "Sucesso!",
        subtitle: "Cadastro finalizado.",
        style: SweetAlertStyle.success, onPress: (bool isConfirm) {
      if (isConfirm) {
        _redirectToLogin(context);
      }
      return false;
    });
  }

  void _register(BuildContext context) {
    _showSuccess(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: EdgeInsets.only(
        top: 60,
        left: 40,
        right: 40,
      ),
      color: Colors.white,
      child: ListView(
        children: <Widget>[
          SizedBox(
            width: 128,
            height: 150,
            child: SizedBox(
              width: 128,
              height: 150,
              child: ListView(
                children: <Widget>[
                  SizedBox(
                    width: 128,
                    height: 128,
                    child: Image.asset("assets/car.png"),
                  ),
                  SizedBox(
                    width: 128,
                    height: 30,
                    child: Text(
                      "Estacionamento",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextFormField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
                labelText: "Nome Completo",
                labelStyle: TextStyle(
                    color: Colors.black38,
                    fontWeight: FontWeight.w400,
                    fontSize: 20)),
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          TextFormField(
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(
                labelText: "Telefone",
                labelStyle: TextStyle(
                    color: Colors.black38,
                    fontWeight: FontWeight.w400,
                    fontSize: 20)),
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          TextFormField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
                labelText: "Placa do Carro",
                labelStyle: TextStyle(
                    color: Colors.black38,
                    fontWeight: FontWeight.w400,
                    fontSize: 20)),
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          TextFormField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
                labelText: "Usuário",
                labelStyle: TextStyle(
                    color: Colors.black38,
                    fontWeight: FontWeight.w400,
                    fontSize: 20)),
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextFormField(
            keyboardType: TextInputType.text,
            obscureText: true,
            decoration: InputDecoration(
                labelText: "Senha",
                labelStyle: TextStyle(
                    color: Colors.black38,
                    fontWeight: FontWeight.w400,
                    fontSize: 20)),
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            height: 60,
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [0.3, 1],
                colors: [
                  Colors.amber,
                  Colors.cyan,
                ],
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            child: SizedBox.expand(
              child: Builder(
                builder: (ctx) => FlatButton(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Registrar-se",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        Container(
                          child: SizedBox(
                            child: Image.asset("assets/row-login.png"),
                            height: 28,
                            width: 28,
                          ),
                        )
                      ],
                    ),
                    onPressed: () => _register(ctx)),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}

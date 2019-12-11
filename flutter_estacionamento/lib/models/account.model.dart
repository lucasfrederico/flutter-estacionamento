import 'package:flutter_estacionamento/models/reserve.model.dart';

class Account {
  int id;
  String name;
  int phoneNumber;
  String user;
  String password;
  List<Reserve> reserves;

  Account(
      {this.id,
      this.name,
      this.phoneNumber,
      this.user,
      this.password,
      this.reserves});

  Account.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    phoneNumber = json['phoneNumber'];
    user = json['user'];
    password = json['password'];
    if (json['reserves'] != null) {
      reserves = new List<Reserve>();
      json['reserves'].forEach((v) {
        reserves.add(new Reserve.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['phoneNumber'] = this.phoneNumber;
    data['user'] = this.user;
    data['password'] = this.password;
    if (this.reserves != null) {
      data['reserves'] = this.reserves.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

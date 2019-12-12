import 'dart:convert';

import 'package:flutter_estacionamento/models/login.model.dart';
import 'package:flutter_estacionamento/models/reserve.model.dart';
import 'package:flutter_estacionamento/utils/constants.utils.dart';
import 'package:http/http.dart';

class ReservesService {
  Future<bool> login(Login loginDto) async {
    Response res =
        await post(Constants.ACCOUNT_BASE_URL + '/login', body: loginDto);

    if (res.statusCode == 200) {
      bool body = jsonDecode(res.body);

      return jsonDecode(res.body);
    } else {
      throw "Can't get posts.";
    }
  }
}

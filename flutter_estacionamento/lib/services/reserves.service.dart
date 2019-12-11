import 'dart:convert';

import 'package:flutter_estacionamento/models/reserve.model.dart';
import 'package:flutter_estacionamento/utils/constants.utils.dart';
import 'package:http/http.dart';

class ReservesService {
  Future<List<Reserve>> getAll() async {
    Response res = await get(Constants.RESERVE_BASE_URL);

    if (res.statusCode == 200) {
      List<dynamic> body = jsonDecode(res.body);

      List<Reserve> dtos = body
          .map(
            (dynamic item) => Reserve.fromJson(item),
          )
          .toList();

      return dtos;
    } else {
      throw "Can't get posts.";
    }
  }
}

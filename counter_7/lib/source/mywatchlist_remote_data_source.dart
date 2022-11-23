import 'dart:convert';
import 'package:http/http.dart' as http;

import '../model/watchlist.dart';

 Future<List<Watchlist>> fetchMyWatchList() async {
      var url = Uri.parse('https://webtugaspbp.herokuapp.com/mywatchlist/json/');
      var response = await http.get(
        url,
        headers: {
          "Access-Control-Allow-Origin": "*",
          "Content-Type": "application/json",
        },
      );

      // melakukan decode response menjadi bentuk json
      var data = jsonDecode(utf8.decode(response.bodyBytes));

      // melakukan konversi data json menjadi object ToDo
      List<Watchlist> listMyWatchList = [];
      for (var d in data) {
        if (d != null) {
          listMyWatchList.add(Watchlist.fromJson(d));
        }
      }

      return listMyWatchList;
  }
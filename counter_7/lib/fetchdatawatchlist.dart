import 'package:counter_7/model/mywatchlist.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

List<String> statusMovie = [];
Future<List<WatchList>> fetchWatchList() async {
  var url =
      Uri.parse('https://refi-tugas-2-pbp.herokuapp.com/mywatchlist/json/');
  var response = await http.get(
    url,
    headers: {
      "Access-Control-Allow-Origin": "*",
      "Content-Type": "application/json",
    },
  );

  var data = jsonDecode(utf8.decode(response.bodyBytes));

  List<WatchList> listWatch = [];

  for (var d in data) {
    if (d != null) {
      listWatch.add(WatchList.fromJson(d));
    }
  }
  return listWatch;
}

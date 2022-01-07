import 'package:http/http.dart' as http;
import 'dart:math';
import 'dart:convert';

Future<List<String>> getAlbum() async {
  var rng = new Random();
  int rand = rng.nextInt(242000);

  Map<String, String> headers = {
    'Content-Type': 'application/json;charset=UTF-8',
    'Charset': 'utf-8'
  };
  // var res = null;
  // while (res == null) {
  var res = await http.get(
      Uri.parse(
          'https://api.discogs.com/masters/${rand}?key=GrCbPLULpiiAhPKqfveL&secret=dGVQYHvFJQLDiugBYBRyFmWOvGFZxUDG'),
      headers: headers);
  // }
  var j = await jsonDecode(res.body);
  // print(j['artists'][0]['name']);
  return [(j['artists'][0]['name']), (j['title']), (j['images'][0]['uri'])];
}

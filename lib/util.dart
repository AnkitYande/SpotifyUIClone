import 'package:http/http.dart' as http;
import 'dart:math';
import 'dart:convert';

Future<List<Album>> loadAlbums() async {
  List<Album> albums = <Album>[];
  print("Loading albums...");
  for (int i = 0; i < 50; i++) {
    var album = await getAlbum();
    if (album != null) {
      // print("Album: " + album.name);
      albums.add(album);
    } else {
      i--;
    }
    // albums.add(
    //   Album("Artist Name", "Album Name",
    //       "https://images3.pixlis.com/background-image-checkers-chequered-checkered-squares-seamless-tileable-jaguar-bokara-grey-2364an.png"),
    // );
  }
  print("Loading COMPLETE");
  return albums;
}

Future<Album?> getAlbum() async {
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
  if (res != null) {
    var j = jsonDecode(res.body);
    if (j != null) {
      return Album(j['artists'][0]['name'], j['title'], j['images'][0]['uri']);
    } else {
      return Album("Artist", "Artist",
          "https://images3.pixlis.com/background-image-checkers-chequered-checkered-squares-seamless-tileable-jaguar-bokara-grey-2364an.png");
    }
  }
}

class Album {
  String artist;
  String name;
  String imageURL;
  Album(this.artist, this.name, this.imageURL);
}

import 'package:flutter/material.dart';
//import 'package:http/http.dart' show Client;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MovieListWidget(),
    );
  }
}

class MovieListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
          future: getMovies(),
          builder: (BuildContext buildContext, AsyncSnapshot snapshot) {
            if (snapshot.hasData) {
              return Center(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(snapshot.data,
                        softWrap: true,
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 18.0,
                            fontStyle: FontStyle.italic)),
                  ));
            } else {
              return Center(child: CircularProgressIndicator());
            }
          }),
    );
  }
}

// TODO uncomment API call in the function here
Future<String> getMovies() async {
  //Client client = Client();
  var response = "Follow the codelab to get something interesting here";
  //final response = await client.get("https://api.androidhive.info/json/glide.json);
  return response;
}

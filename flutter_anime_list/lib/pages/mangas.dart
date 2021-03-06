import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_genshin_impact/model/manga_model.dart';
import 'package:http/http.dart' as http;

late Future<List<MangasData>> items;




@override
Widget build(BuildContext context) {
  return MaterialApp(
    title: 'Flutter Demo',
    theme: ThemeData(
      // This is the theme of your application.
      //
      // Try running your application with "flutter run". You'll see the
      // application has a blue toolbar. Then, without quitting the app, try
      // changing the primarySwatch below to Colors.green and then invoke
      // "hot reload" (press "r" in the console where you ran "flutter run",
      // or simply save your changes to "hot reload" in a Flutter IDE).
      // Notice that the counter didn't reset back to zero; the application
      // is not restarted.
      primarySwatch: Colors.blue,
    ),
    home: const Mangas(title: 'Flutter Demo Home Page'),
  );
}

class Mangas extends StatefulWidget {
  const Mangas({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<Mangas> createState() => _MyHomePageState2();
}

class _MyHomePageState2 extends State<Mangas> {
  late Future<List<MangasData>> items;
  

  @override
  void initState() {
    items = fetchPlanets();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          FutureBuilder<List<MangasData>>(
            future: items,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return _planetsList(snapshot.data!);
              } else if (snapshot.hasError) {
                return Text('${snapshot.error}');
              }

              return const Center(child: CircularProgressIndicator());
            },
          )
        ],
      ),
    );
  }

 

  Widget _getPlanetImg(MangasData img) {
    
      return Image.network(img.images.jpg.imageUrl, fit: BoxFit.cover,);
  }

  Future<List<MangasData>> fetchPlanets() async {
    final response = await http.get(Uri.parse('https://api.jikan.moe/v4/manga?type=manga&order_by=mal_id&sort=desc&q=JoJo no '));
    if (response.statusCode == 200) {
      return MangasModel.fromJson(jsonDecode(response.body)).data;
    } else {
      throw Exception('Failed to load planets');
    }
  }

  Widget _planetsList(List<MangasData> planetsList) {
    return SizedBox(
      height: 600,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: planetsList.length,
        itemBuilder: (context, index) {
          return _planetItem(planetsList.elementAt(index), index);
        },
      ),
    );
  }

  Widget _planetItem(MangasData planet, int index) {
    return Container(
        margin: const EdgeInsets.symmetric(vertical: 20.0),
        width: 150,
        child: Card(
          child: InkWell(
            splashColor: Colors.red.withAlpha(30),
            onTap: () {
              debugPrint('Card tapped.');
            },
            child: SizedBox(
              width: 30,
              height: 400,
              child: Column(
                children: [
                  Text(planet.title),
                  _getPlanetImg(planet)
                ],
              ),
            ),
          ),
        ));
  }

  @override
  noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
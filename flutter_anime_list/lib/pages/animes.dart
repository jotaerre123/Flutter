import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_genshin_impact/model/animes_model.dart';
import 'package:flutter_genshin_impact/model/manga_model.dart';
import 'package:http/http.dart' as http;





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
    home: const Animes(title: 'Flutter Demo Home Page'),
  );
}

class Animes extends StatefulWidget {
  const Animes({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<Animes> createState() => _MyHomePageState2();
}

class _MyHomePageState2 extends State<Animes> {
  late Future<List<AnimesData>> items;
  

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
          FutureBuilder<List<AnimesData>>(
            future: fetchPlanets(),
            builder: (context, snapshot) {
              /*if (snapshot.hasData) {
                return _planetsList(snapshot.data!);
              } else if (snapshot.hasError) {
                return Text('${snapshot.error}');
              }*/
              switch (snapshot.connectionState) {
          case ConnectionState.none:
          case ConnectionState.waiting:
            return new Text('loading...');
          default:
            if (snapshot.hasError)
              return new Text('Error: ${snapshot.error}');
            else {
              return _planetsList(context, snapshot);
            }
        }

             /* return const Center(child: CircularProgressIndicator());*/
            },
          )
        ],
      ),
    );
  }

 

  Widget _getPlanetImg(AnimesData img) {
    
      return Image.network(img.images.jpg.imageUrl, fit: BoxFit.cover,);
  }

  Future<List<AnimesData>> fetchPlanets() async {
    final response = await http.get(Uri.parse('https://api.jikan.moe/v4/anime?status=airing&type=tv&rating=pg13&page=2'));
    if (response.statusCode == 200) {
      return AnimesModel.fromJson(jsonDecode(response.body)).data;
    } else {
      throw Exception('Failed to load planets');
    }
  }

  Widget _planetsList(BuildContext planetsList, AsyncSnapshot<List<AnimesData>> snapshot) {
    List<AnimesData>? values = snapshot.data;
    return SizedBox(
      height: 600,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: values?.length,
        itemBuilder: (context, index) {
          return _planetItem(values![index], index);
        },
      ),
    );
  }

  Widget _planetItem(AnimesData planet, int index) {
    return Container(
        margin: const EdgeInsets.symmetric(vertical: 20.0),
        width: MediaQuery.of(context).size.width,
        child: Card(
          child: InkWell(
            splashColor: Colors.red.withAlpha(30),
            onTap: () {
              debugPrint('Card tapped.');
            },
            child: SizedBox(
              width: 30,
              height: 500,
              child: Column(
                children: [
                  Text(planet.title),
                  _getPlanetImg(planet),
                  Text(planet.status)
                ],
              ),
            ),
          ),
        ));
  }

  @override
  noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
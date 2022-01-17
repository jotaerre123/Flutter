import 'package:flutter/material.dart';
import 'package:flutter_card/style.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
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
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 

  
  

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Card(
                child: InkWell(
                  splashColor: Colors.orange.withAlpha(30),
                  onTap: () {
                    debugPrint('Card tapped.');
                  },
                  child: SizedBox(
                    width: 350,
                    height: 200,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Container(
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(top: 25, left: 10),
                                child: RichText(
                                    text: const TextSpan(
                                        text: '20:55\n',
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 18),
                                        children: [
                                      TextSpan(
                                          text: 'SALIDA',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 10))
                                    ])),
                              ),
                            ),
                            Container(
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(top: 90, left: 10),
                                child: RichText(
                                    text: const TextSpan(
                                        text: '22:05\n',
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 18),
                                        children: [
                                      TextSpan(
                                          text: 'LLEGADA',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 10))
                                    ])),
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 10, right: 130),
                              child: Row(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.all(15.0),
                                    padding: const EdgeInsets.all(3.0),
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.black),
                                        borderRadius: BorderRadius.circular(2)),
                                    child: RichText(
                                        text: const TextSpan(
                                            text: 'MAD',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14))),
                                  ),
                                  RichText(
                                      text: const TextSpan(
                                          text: 'Madrid',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 18)))
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 130),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        'assets/images/iberia.png',
                                        width: 50,
                                      ),
                                      RichText(
                                          text: const TextSpan(
                                        text: 'Iberia 7448',
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 13),
                                      )),
                                    ],
                                  ),
                                  RichText(
                                      text: const TextSpan(
                                          text: 'Duración 2h 10m',
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 13)))
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 20, right: 130),
                              child: Row(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.all(15.0),
                                    padding: const EdgeInsets.all(3.0),
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.black),
                                        borderRadius: BorderRadius.circular(2)),
                                    child: RichText(
                                        text: const TextSpan(
                                            text: 'LHR',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14))),
                                  ),
                                  RichText(
                                      text: const TextSpan(
                                          text: 'Londres',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 18)))
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Center(
              child: Card(
                child: InkWell(
                  splashColor: Colors.blue.withAlpha(30),
                  onTap: () {
                    debugPrint('Card tapped.');
                  },
                  child: SizedBox(
                    width: 400,
                    height: 300,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 12, left: 12),
                              child: RichText(
                                  text: const TextSpan(
                                      text: 'Buena puntuación',
                                      style: TextStyle(
                                          color: Colors.greenAccent,
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold))),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 12, right: 12),
                              child: RichText(
                                  text: const TextSpan(
                                      text: '45 ofertas',
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold))),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 40),
                          child: Image.asset(
                            'assets/images/coche.png',
                            width: 200,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 240),
                          child: RichText(
                              text: const TextSpan(
                                  text: 'Mini\n',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 15),
                                  children: [
                                TextSpan(
                                    text: '2 puertas - Chevrolet amarillo\n',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 10))
                              ])),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Container(
                                child: Row(
                                  children: [
                                    const Icon(
                                      Icons.grain_rounded,
                                      size: 15,
                                      color: Colors.blueGrey,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 7),
                                      child: RichText(
                                          text: const TextSpan(
                                              text: 'Man.',
                                              style: TextStyle(
                                                  color: Colors.blueGrey,
                                                  fontSize: 12))),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Container(
                                child: Row(
                                  children: [
                                    const Icon(
                                      Icons.ac_unit,
                                      size: 15,
                                      color: Colors.blueGrey,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 7),
                                      child: RichText(
                                          text: const TextSpan(
                                              text: 'A/A',
                                              style: TextStyle(
                                                  color: Colors.blueGrey,
                                                  fontSize: 12))),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Container(
                                child: Row(
                                  children: [
                                    const Icon(
                                      Icons.group,
                                      size: 15,
                                      color: Colors.blueGrey,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 7),
                                      child: RichText(
                                          text: const TextSpan(
                                              text: '4',
                                              style: TextStyle(
                                                  color: Colors.blueGrey,
                                                  fontSize: 12))),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Container(
                                child: Row(
                                  children: [
                                    const Icon(
                                      Icons.thumb_up,
                                      size: 15,
                                      color: Colors.blueGrey,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 7),
                                      child: RichText(
                                          text: const TextSpan(
                                              text: '1',
                                              style: TextStyle(
                                                  color: Colors.blueGrey,
                                                  fontSize: 12))),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 5),
                          child: Divider(
                            color: Colors.grey,
                            thickness: 2,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            TextButton(
                              child: const Text('35.000€'),
                              onPressed: () {},
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 205),
                              child: SizedBox(width: 8),
                            ),
                            TextButton(
                              child: const Text('SELECCIONAR'),
                              onPressed: () {},
                            ),
                            const SizedBox(width: 8),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

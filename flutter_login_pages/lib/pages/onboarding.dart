import 'package:flutter/material.dart';

import 'register.dart';
import 'sign_in.dart';

void main() => runApp(const Home());

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  final ButtonStyle outlineButtonStyle = ElevatedButton.styleFrom(
    primary: Colors.white,
    minimumSize: Size(150, 70),
    padding: EdgeInsets.symmetric(horizontal: 16),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(7)),
    ),
  );
  final ButtonStyle outlineButtonStyle2 = OutlinedButton.styleFrom(
    primary: Colors.black87,
    minimumSize: Size(160, 70),
    padding: EdgeInsets.symmetric(horizontal: 16),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(7)),
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 500,
              height: 500,
              margin: EdgeInsets.all(10),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.asset(
                    'assets/images/logo.png',
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 0),
              child: Container(
                width: 400,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                        text: const TextSpan(
                            text: '  Discover your\n',
                            style: TextStyle(
                                color: Colors.black87,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                            children: [
                          TextSpan(
                              text: 'Dream job Here',
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold))
                        ])),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: RichText(
                          text: const TextSpan(
                              text:
                                  '  Explore al the most exiting jobs roles\n',
                              style: TextStyle(
                                  color: Colors.black45, fontSize: 14),
                              children: [
                            TextSpan(
                                text: 'based on your interest And study major',
                                style: TextStyle(
                                    color: Colors.black45, fontSize: 14))
                          ])),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                  color: Colors.grey.shade300,
                  width: 300,
                  height: 70,
                  child: Row(
                    children: [
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          ElevatedButton(
                            style: outlineButtonStyle,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Register()),
                              );
                            },
                            child: const Text('Register',
                                style: TextStyle(color: Colors.black)),
                          ),
                          Positioned(
                            left: 140,
                            child: OutlinedButton(
                              style: outlineButtonStyle2,
                              onPressed: () {
                                Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const SignIn()),
                              );
                              },
                              child: const Text('Sign In'),
                            ),
                          )
                        ],
                        clipBehavior: Clip.none,
                      ),
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }
}

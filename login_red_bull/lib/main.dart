import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Login Red Bull',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/energuia.png"),
                    fit: BoxFit.cover)),
            child: const MyHomePage(title: 'Flutter Login Red Bull')));
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
        backgroundColor: Colors.transparent,
        body: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Center(
            child: Column(
              children: [
                Stack(
                  children: <Widget>[
                  const Positioned(
                    top: 30,
                    right: 30,
                    child: Text(
                      'Skip',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Center(
                    child: Column(
                      children: [
                        Positioned(
                          bottom: 100,
                          child: Image.asset(
                            'assets/images/Red-Bull-Emblem.png',
                            width: 300,
                            height: 300,
                          ),
                        ),
                        Center(
                          child: RichText(
                            textAlign: TextAlign.center,
                            text: const TextSpan(
                                text: 'Sign to get the most of\n ',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold),
                                children: [
                                  TextSpan(
                                      text: 'Red Bull',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 30))
                                ]),
                          ),
                        ),
                        const Text(
                            '\nCreate an account to save favorites and download\n videos to watch anytime anytime you want',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.normal,
                            )),
                        SignInButton(
                          Buttons.Facebook,
                          text: "Continue with Facebook",
                          onPressed: () {},
                        ),
                        SignInButton(
                          Buttons.Google,
                          text: "Continue with Google",
                          onPressed: () {},
                        ),
                        RichText(
                            textAlign: TextAlign.center,
                            text: const TextSpan(
                                text: 'Continue with Email',
                                style: TextStyle(color: Colors.white)))
                      ],
                    ),
                  )
                ], clipBehavior: Clip.none),
              ],
            ),
          ),
        ));
  }
}

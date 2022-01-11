import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

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

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;
 
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
     final ButtonStyle style =
        ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));

    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      backgroundColor: const Color.fromRGBO(228, 51, 20, 1),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          
          children: <Widget>[
           Padding(
             padding: const EdgeInsets.only(top:75.0),
             child: Image.asset('assets/images/path_logo.png', width: 200.0, height: 100.0)
             
           ),
           const Text('Beautiful, Private Sharing',style:TextStyle(color:Colors.white54, fontSize:16)),
           
           Padding(
             padding: const EdgeInsets.only(top: 170.0,bottom:50.0),
             child: SizedBox(width: 250, height: 55, child: ElevatedButton(
              onPressed:() {},
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)
              ),
              child: const Text('Sign up', style:TextStyle(color:Colors.red))
          )),
           ),
           const Text('Already have a Path account?',style:TextStyle(color:Colors.white54, fontSize:16)),
           SizedBox(width: 250, height: 55, child: ElevatedButton(
            onPressed:() {},
             style: ElevatedButton.styleFrom(
                primary: Color.fromRGBO(228, 51, 20, 1),
                side: BorderSide(width: 2.0, color: Colors.white54,),
                textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.normal)
              ),
            child: const Text('Log in', style:TextStyle(color:Colors.white54))
          )),
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: const Text('By using Path, you agree to Path\'s', style:TextStyle(color:Colors.white54, fontSize:16)),
          ),
          Container(
            color: Color.fromRGBO(228, 51, 20, 1),
            child: Center(
              child: RichText(
                
                text: TextSpan( children: <TextSpan>[TextSpan(text:'Terms of use', style:TextStyle(color:Colors.white, fontSize:16, 
              decoration: TextDecoration.underline), recognizer: TapGestureRecognizer()..onTap = (){
                
              }),
              TextSpan(text:' and', style:TextStyle(color:Colors.white54, fontSize:16)),

              TextSpan(text:' Privacy Policy', style:TextStyle(color:Colors.white, fontSize:16,
              decoration: TextDecoration.underline), recognizer: TapGestureRecognizer()..onTap = (){
                
              })
              ]),
            ),
          )
          
          )],
        ),
      ),// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
  
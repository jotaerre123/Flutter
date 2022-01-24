import 'package:flutter/material.dart';

import 'register.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

final _formKey = GlobalKey<FormState>();

class _SignInPageState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign In'),
      ),
      backgroundColor: Colors.white70,
      body: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Center(
          child: Column(
            children:  [
              Text(
                'Hola de nuevo!\n',
                style: TextStyle(fontSize: 24),
              ),
              Text(
                'Bienvenido de nuevo, te\n echabamos de menos!\n',
                style: TextStyle(color: Colors.white60, fontSize: 18),
              ),
              
              Form(
      key: _formKey,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 70,
              width: 300,
              child: TextButton(
                onPressed: () {},
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            side: const BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(10.0)))),
                child: TextFormField(
                  decoration: InputDecoration(hintText: 'Introduzca Usuario'),
                  validator: (value) {
                    if (value == null || value.isEmpty || value.length < 4) {
                      return 'Error, contraseña vacia o menor de 4 caracteres.';
                    }
                    return null;
                  },
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 70,
              width: 300,
              child: TextButton(
                onPressed: () {},
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            side: const BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(10.0)))),
                child: TextFormField(
                  decoration: InputDecoration(hintText: 'Contraseña'),
                  validator: (value) {
                    if (value == null || value.isEmpty || value.length < 4) {
                      return 'Error, contraseña vacia o menor de 4 caracteres.';
                    }
                    return null;
                  },
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: ElevatedButton(
              style: ButtonStyle(
                  padding: MaterialStateProperty.all(
                      EdgeInsets.only(left: 100, right: 100)),
                  backgroundColor: MaterialStateProperty.all(Colors.redAccent)),
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Datos correctos')));
                }
              },
              child: const Text('Log in'),
            ),
          ),
          RichText(text: const TextSpan(text: '\n¿Todavia no eres miembro?')),
          TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                'Registrate',
                style: TextStyle(color: Colors.blue),
              ))
        ],
      ),
    )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'sign_in.dart';
class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

final _formKey = GlobalKey<FormState>();

class _RegisterPageState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register'),
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
                      return 'Fallo en la validación no puede ser una contraseña vacia o menor de 4 caracteres.';
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
                  decoration: InputDecoration(hintText: 'Introduzca Email'),
                  validator: (value) {
                    if (value == null || value.isEmpty || value.length < 4) {
                      return 'Fallo en la validación no puede ser una contraseña vacia o menor de 4 caracteres.';
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
                      return 'Fallo en la validación no puede ser una contraseña vacia o menor de 4 caracteres.';
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
              child: const Text('Registrarme'),
            ),
          ),
          RichText(text: const TextSpan(text: '\n¿Ya tienes una cuenta?')),
          TextButton(
              onPressed: () {
                Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const SignIn()),
                              );
              },
              child: Text(
                'Logueate',
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
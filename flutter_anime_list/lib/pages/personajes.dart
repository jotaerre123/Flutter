import 'package:flutter/material.dart';

class Personajes extends StatelessWidget {
  const Personajes({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Characters')),
      body: const Center(
        child: Text('Characters information'),
      ),
    );
  }
}
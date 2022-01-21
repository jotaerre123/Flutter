import 'package:flutter/material.dart';

class Animes extends StatelessWidget {
  const Animes({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Animes')),
      body: const Center(
        child: Text('Anime Information'),
      ),
    );
  }
}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  const ListPage({ Key? key }) : super(key: key);


@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: const Text('Productos'),
      backgroundColor: Colors.deepPurpleAccent,
    ),
    body: const Center(
    ),
  );
}
}
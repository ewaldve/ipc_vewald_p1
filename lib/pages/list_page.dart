import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:proyecto_uno/pages/product_details_page.dart';

class ListPage extends StatelessWidget {
  const ListPage({ Key? key }) : super(key: key);


@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: const Text('Productos'),
      backgroundColor: Colors.deepPurpleAccent,
    ),
    body:  _productList(context)
  );
}


Widget _productList(context) {
  return ListView(
    children: <Widget>[
      _productName(context, "Detergente Ariel", "2.5"),
      const Divider(),
      _productName(context, "Detergente Briel", "3.5"),
      const Divider(),
      _productName(context, "Detergente Ariel", "4.5"),
      const Divider(),
      _productName(context, "Detergente Ariel", "5.5"),
      const Divider(),
      _productName(context, "Detergente Ariel", "6.5"),
      const Divider(),
      _productName(context, "Detergente Ariel", "7.5"),
      const Divider(),
      _productName(context, "Detergente Ariel", "8.5"),
    ],
  );
}


ListTile _productName (context, String title, String subtitle){
  const IconData keyboard_arrow_right = IconData(0xe355, fontFamily: 'MaterialIcons');
  return ListTile(
    title: Text(
      title,
      textAlign: TextAlign.left,
    ),
    leading:  SizedBox(
        height: 80.0,
        width: 80.0, // fixed width and height
        child: Image.asset("assets/img/producto.png", fit: BoxFit.cover)
    ),
    subtitle: Text(subtitle),
    trailing: const Icon(keyboard_arrow_right, size: 45),
    onTap: () {
      _pushProducts(context);
    },
    contentPadding: EdgeInsets.all(10.0),
  );
}

  void _pushProducts(context) async {
    await Navigator.of(context)
        .push(MaterialPageRoute(builder: (BuildContext context) {
      return const ProductDetailsPage();
    }));

}}
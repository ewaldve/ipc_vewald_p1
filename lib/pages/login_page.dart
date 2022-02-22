import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:proyecto_uno/pages/list_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const SizedBox(
              height: 20,
            ),
            Row(
              children: <Widget>[
              const Padding(
                padding: EdgeInsets.only(left: 15, top: 10), //apply padding to all four sides
                child: Text("Login", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40)),
              ),
              const SizedBox(
                width: 60,
              ),
              Container(
                width: 50.0,
                height: 50.0,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                  color: Colors.deepPurpleAccent,
                  shape: BoxShape.circle,
                ),),
                const SizedBox(
                  width: 10,
                ),
              Container(
                width: 100.0,
                height: 100.0,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                  color: Colors.deepPurpleAccent,
                  shape: BoxShape.circle,
                ),),
            ]),
            const SizedBox(
              height: 80
            ),

          Padding(
              padding: const EdgeInsets.only(left: 30, top: 10),
            child:
          Table(
            border: TableBorder.symmetric(outside: const BorderSide(width: 2, color: Colors.blueGrey)),
            columnWidths: const <int, TableColumnWidth>{
              0: FixedColumnWidth(300),
            },
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            children: <TableRow>[
              TableRow(
                children: <Widget>[
                  TableCell(
                    verticalAlignment: TableCellVerticalAlignment.top,
                    child: Container(
                        padding: const EdgeInsets.all(10.0),
                        margin: const EdgeInsets.only(left: 0, top: 20, right: 10, bottom: 0),
                        width: 40,
                        height: 50,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.transparent,
                          ),
                        ),
                        child: TextField(
                          keyboardType: TextInputType.name,
                          autocorrect: false,
                          decoration: const InputDecoration(
                              contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 10.0),
                              prefixIcon: Icon(Icons.person, color: Colors.deepPurpleAccent),
                              hintText: "Username"),
                          onSubmitted: (input) {
                            null;
                          },
                        )),),
                ],
              ),
              TableRow(
                decoration: const BoxDecoration(
                  color: Colors.transparent,
                ),
                children: <Widget>[
                  Container(
                      padding: const EdgeInsets.all(10.0),
                      margin: const EdgeInsets.only(left: 0, top: 10, right: 10, bottom: 10),
                      width: 40,
                      height: 50,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.transparent,
                        ),
                      ),
                      child: TextField(
                        keyboardType: TextInputType.name,
                        autocorrect: false,
                        decoration: const InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 10.0),
                            prefixIcon: Icon(Icons.password, color: Colors.deepPurpleAccent),
                            hintText: "Password"),
                        onSubmitted: (input) {
                          null;
                        },
                      ))
                ],
              ),
            ],
          ),
    ),
          const SizedBox(
              height: 135,
            ),
          Row(
            children: <Widget>[
              const SizedBox(
                width: 240,
              ),
              TextButton(
                  style: ButtonStyle(
                      padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(10)),
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.deepPurpleAccent),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.deepPurpleAccent)
                          )
                      )
                  ),
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ListPage()),
                    );
                  },
                  child: const Text('        LOGIN       ', style: TextStyle(color: Colors.white),
                  ))]
          ),],),],),);
  }
}

import 'package:flutter/material.dart';

import 'main.dart';

class ShoesReadPage extends StatelessWidget {
  final int index;
  const ShoesReadPage({Key key, this.index}) : super(key: key);
  @override

  Widget build(BuildContext context) {
    return Center(
      child: ShoesCardRead(choice: data[index]),
    );
  }
}

class ShoesCardRead extends StatelessWidget {
  const ShoesCardRead({Key key, this.choice}) : super(key: key);
  final Shoes choice;
  @override

  Widget build(BuildContext context) {
    final title = choice.nama;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(title),
      ),
      body: new Container(
        child: Card(
            color: Colors.white,
            child: Column(
              children: <Widget>[
                new Container(
                    child: Image.network(choice.foto)),
                new Container(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(choice.merk,
                          style: Theme.of(context).textTheme.title),
                      Text(choice.nama,
                          style:
                              TextStyle(color: Colors.black.withOpacity(0.5))),
                      Text(choice.deskripsi),
                    ],
                  ),
                )
              ],
              crossAxisAlignment: CrossAxisAlignment.start,
            )),
      ),
    );
  }
}

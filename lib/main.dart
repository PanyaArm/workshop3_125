import 'package:flutter/material.dart';

import 'screen/home.dart';

void main() {
  runApp(MaterialApp( 
    home: Scaffold(
        appBar: AppBar(
          title: Text("CET App my125"),
          backgroundColor: Colors.amber,
          centerTitle: true,
        ),
        body: const Home()
      ),
    ));
}

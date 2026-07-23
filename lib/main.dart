import 'package:flutter/material.dart';

//import 'screen/home.dart';
//import 'screen/itme.dart';
import 'screen/friend_list.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp( 
    home: Scaffold(
        appBar: AppBar(
          title: Text("CET App ID:125"),
          backgroundColor: Colors.amber,
          centerTitle: true,
        ),
      //body: const Home(),
      //body: const Item(),
        body: const FriendListScreen(),
      ),
    );
  }
}
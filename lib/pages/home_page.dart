import 'package:flutter/material.dart';

import '../widgets/drawer.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const int days = 30;
    const String Name = "Atharv Kulkarni";

    return Scaffold(
      appBar: AppBar(
        title: Text("Catalouge App"),
      ),
      body: Center(
        child: Container(
          child: Text("My First Flutter App in $days days by $Name"),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}

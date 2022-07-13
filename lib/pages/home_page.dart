import 'package:flutter/material.dart';
import 'package:test_app/models/catalouge.dart';

import '../widgets/Item_Widget.dart';
import '../widgets/drawer.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const int days = 30;
    const String Name = "Atharv Kulkarni";

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Catalouge App",
          style: TextStyle(color: Colors.black),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: CatalogModel.items.length,
          itemBuilder: (context, index) {
            //index gives postion
            return ItemWidget(
              item: CatalogModel.items[index],
            );
          },
        ),
      ), //render items as the screen is scrolled

      drawer: MyDrawer(),
    );
  }
}

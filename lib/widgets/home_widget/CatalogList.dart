import 'package:flutter/material.dart';
import 'package:test_app/models/catalouge.dart';
import 'package:test_app/pages/homeDetail_page.dart';
import 'package:test_app/widgets/home_widget/catalogItem.dart';

class CatalogList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: CatalogModel.items.length,
      itemBuilder: (context, index) {
        final catalog = CatalogModel.items[index];
        return InkWell(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => HomeDetailPage(catalog: catalog))),
            child: CatalogItem(catalog: catalog)); //named catalog
      },
    );
  }
}

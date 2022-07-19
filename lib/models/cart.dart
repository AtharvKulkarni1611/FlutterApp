import 'dart:ffi';

import 'package:test_app/models/catalouge.dart';

class CartModel {
  static final cartModel = CartModel._internal();

  CartModel._internal();

  factory CartModel() => cartModel;
  //Catalog Field
  late CatalogModel _catalog;

  //collections of ids, store ids of each item
  final List<int> _itemIds = [];

  //get Catalog
  CatalogModel get catalog => _catalog;

  set catalog(CatalogModel newCatalog) {
    _catalog = newCatalog;
  }

  //Get Items in the cart
  List<Item> get items => _itemIds.map((id) => _catalog.getbyID(id)).toList();

  //get total price
  num get TotalPrice =>
      items.fold(0, (total, current) => total + current.price);

  //Add item
  void add(Item item) {
    _itemIds.add(item.id);
  }

  //remove item
  void remove(Item item) {
    _itemIds.remove(item.id);
  }
}

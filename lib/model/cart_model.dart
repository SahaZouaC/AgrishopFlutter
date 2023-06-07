import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier{

    // list of cakes on sale
    final List _agriTools = [
      // [ToolName, ToolPrice, imagePath, color]
    ["Tractor", "5000", "lib/images/tractor.jpg", Colors.purple],
    ["Soya Beans Seeds", "25000", "lib/images/soya_beans.jpg", Colors.purple],
    ["Hand Cultivator 3-Tine", "12000", "lib/images/germinating.jpg", Colors.purple],
    ["Solar Generator", "4000", "lib/images/fish rearing.jpg", Colors.purple],
    ["fish Feeder", "5000", "lib/images/fish_feeder.jpg", Colors.purple],
    ["Papaya Seeds", "25000", "lib/images/papaya.jpg", Colors.purple],
    ["cake1", "12000", "lib/images/tractor.jpg", Colors.purple],
    ["Tractor", "5000", "lib/images/using tractor.jpg", Colors.purple],
    ["cake1", "12000", "lib/images/using tractor.jpg", Colors.purple],
    ["Solar Generator", "4000", "lib/images/fish rearing.jpg", Colors.purple],
    ["fish Feeder", "5000", "lib/images/fish_feeder.jpg", Colors.purple],
    ["Papaya Seeds", "25000", "lib/images/papaya.jpg", Colors.purple],
    ["cake1", "12000", "lib/images/tractor.jpg", Colors.purple],
    ["Tractor", "5000", "lib/images/using tractor.jpg", Colors.purple],
    ["cake1", "12000", "lib/images/using tractor.jpg", Colors.purple],
    ["cake1", "12000", "lib/images/tractor.jpg", Colors.purple],
    ["Tractor", "5000", "lib/images/using tractor.jpg", Colors.purple],
    ["cake1", "12000", "lib/images/using tractor.jpg", Colors.purple],
    ["Tractor", "5000", "lib/images/tractor.jpg", Colors.purple],
    ["Soya Beans Seeds", "25000", "lib/images/soya_beans.jpg", Colors.purple],
    ["Hand Cultivator 3-Tine", "12000", "lib/images/germinating.jpg", Colors.purple],
    ["Solar Generator", "4000", "lib/images/fish rearing.jpg", Colors.purple],
    ["fish Feeder", "5000", "lib/images/fish_feeder.jpg", Colors.purple],
    ["Papaya Seeds", "25000", "lib/images/papaya.jpg", Colors.purple],
    ["cake1", "12000", "lib/images/tractor.jpg", Colors.purple],
    ["Tractor", "5000", "lib/images/using tractor.jpg", Colors.purple],
    ["cake1", "12000", "lib/images/using tractor.jpg", Colors.purple],
    ["Solar Generator", "4000", "lib/images/fish rearing.jpg", Colors.purple],
    ["fish Feeder", "5000", "lib/images/fish_feeder.jpg", Colors.purple],
    ["Papaya Seeds", "25000", "lib/images/papaya.jpg", Colors.purple],
    ["cake1", "12000", "lib/images/tractor.jpg", Colors.purple],
    ["Tractor", "5000", "lib/images/using tractor.jpg", Colors.purple],
    ["cake1", "12000", "lib/images/using tractor.jpg", Colors.purple],
    ["cake1", "12000", "lib/images/tractor.jpg", Colors.purple],
    ["Tractor", "5000", "lib/images/using tractor.jpg", Colors.purple],
    ["cake1", "12000", "lib/images/using tractor.jpg", Colors.purple],
    ];

    // list of cart Cakes
    List cartTools = [];

  get agriItems => _agriTools;

  get agriTools => cartTools;

  get searchController => null;

  // add cake to cart
  void addToolsCart(int index){
    cartTools.add(_agriTools[index]);
    notifyListeners();
  }

  //remove  Tools from cart
  void removeToolsFromCart(int index){
    cartTools.removeAt(index);
    notifyListeners();
  }

  //calculate total price
  String calculateTotal(){
    double totalPrice = 0;
    for (int i = 0; i < cartTools.length; i++ ){
      totalPrice += double.parse(cartTools[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }
}
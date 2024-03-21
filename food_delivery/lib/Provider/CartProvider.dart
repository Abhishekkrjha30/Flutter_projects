import 'package:flutter/material.dart';

import '../Model/DishModel.dart';

class CartProvider with ChangeNotifier{
  List<ModelDish> _dishList=[];


  void addItem(ModelDish modelDish){
    _dishList.add(modelDish);
    notifyListeners();
  }

  void removeItem(ModelDish modelDish){
    _dishList.remove(modelDish);
    notifyListeners();
}

  List<ModelDish> getItem(){
    return _dishList;
}
void removeAll(){
    _dishList.removeRange(0,_dishList.length);
}

}
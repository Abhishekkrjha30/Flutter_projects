import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Model/DishModel.dart';
import '../Provider/CartProvider.dart';
import 'Cart.dart';

class BottomSheetPage extends StatefulWidget{
  ModelDish modelDish;   int index;
  BottomSheetPage(this.modelDish,this.index);
  //BottomSheetPage();
  @override
  State<StatefulWidget> createState() {

    return BottomSheetPageState();
  }

}

class BottomSheetPageState extends State<BottomSheetPage>{
  var dishList=<ModelDish>[];  int add=0;
  @override
  Widget build(BuildContext context) {
    final cartProvider=Provider.of<CartProvider>(context);
    dishList=cartProvider.getItem();

    return Scaffold(

     body: Container()


    );
  }
  void updateList(ModelDish md,int j,int s){
    int c=0; int p=0;
    //List<ModelDish> modelDish=model;
    p=dishList[j].price/dishList[j].count;
      md.count=widget.modelDish.count;
      md.price=dishList[j].price*widget.modelDish.count;
      dishList.removeAt(j);

    if(1==s) {
      md.count++;
      md.price=dishList[j].price+p;
      dishList.removeAt(j);
      // dishList.insert(j,md);
    }

      dishList.insert(j,md);
  }
  void increment(){
    setState(() {
     widget.modelDish.count=widget.modelDish.count+1;
    });
  }

  void decrement(){
    setState(() {
     widget.modelDish.count=widget.modelDish.count-1;
    });
  }
  void multiply(){
    setState(() {
      for(int i=0;i<=add;i++){
       // price1=price*i;
      }
    });
  }
}



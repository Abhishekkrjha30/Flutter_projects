import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/Cart/BottomSheetPage.dart';
import 'package:food_delivery/Cart/CheckOut.dart';
import 'package:food_delivery/Cart/DeliveryAddress.dart';
import 'package:food_delivery/Drawer/DrawerPage.dart';
import 'package:provider/provider.dart';

import '../Model/DishModel.dart';
import '../Provider/CartProvider.dart';

class Cart extends StatefulWidget {

  @override
  State<Cart> createState() => CartState();
}


class CartState extends State<Cart> {
 var add=0;  double price=0;double price1=0;
 List<ModelDish> dishList=[];
  List<ModelDish> model=[];

  @override
  Widget build(BuildContext context) {
    final cartProvider=Provider.of<CartProvider>(context);
    dishList=cartProvider.getItem();

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.green),
        title: Text("Your Cart",style: TextStyle(letterSpacing: 0.5,fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      drawer: DrawerPage(),
      body: Column(
        children: [
          Expanded(
           // fit: FlexFit.loose,
            child: ListView.builder(
                    itemCount: dishList.length,
                    itemBuilder:(
                    BuildContext,int index
                    ){
                      ModelDish modeldish=dishList[index];
                     return
                         SingleChildScrollView(
                           child: Column(
                             children: [
                               ListTile(
                                 onTap:(){
                                   showModalBottomSheet(context: context, builder: (context) {
                                     return SingleChildScrollView(
                                     child:  Column(

                                         mainAxisSize: MainAxisSize.min,
                                         //  mainAxisSize: MainAxisSize.max,
                                         children: [
                                           // widget._add=widget.modelDish.count,
                                           SizedBox(height: 20,),
                                           Text('${modeldish.name}',style: TextStyle(
                                               fontSize: 20,fontWeight:  FontWeight.bold
                                           ),),
                                           Padding(
                                             padding: const EdgeInsets.only(top:25,left: 110,right: 110),
                                             child: Container(
                                                 height: 45,
                                                 decoration: BoxDecoration(
                                                     borderRadius: BorderRadius.circular(22),
                                                     color:Theme.of(context).backgroundColor,
                                                     border: Border.all(
                                                         width: 1.5,
                                                         color: Colors.grey
                                                     )
                                                 ),
                                                 child:
                                                 Row(
                                                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                   children: [
                                                     // add=dishList[index].count.toString(),

                                                     IconButton(onPressed: (){
                                                       decrement();
                                                         modeldish.count=modeldish.count-add;
                                                         add=0;
                                                     }, icon: Icon(Icons.remove)),
                                                     Text('${modeldish.count}', style: TextStyle(
                                                         fontWeight: FontWeight.bold, fontSize: 20),),
                                                     IconButton(onPressed: (){
                                                       increment();
                                                         modeldish.count=modeldish.count+add;
                                                         add=0;

                                                     }, icon: Icon(Icons.add)),

                                                   ],

                                                 )
                                             ),
                                           ),
                                           SizedBox(height: 90,),

                                           Padding(
                                             padding: const EdgeInsets.all(8.0),
                                             child: Container(
                                               height: 50,
                                               width: double.infinity,
                                               decoration: BoxDecoration(
                                                 borderRadius: BorderRadius.circular(10),
                                                 color: Colors.green,

                                               ),
                                               child: TextButton(
                                                 onPressed: (){
                                                   // cartProvider.removeItem(dishList[widget.index]);
                                                   updateList(modeldish,index, 0);
                                                 },
                                                 child: Center(child: Text('Update Cart',style: TextStyle(
                                                     fontSize: 20,color: Colors.white,letterSpacing: 0.6,fontWeight: FontWeight.bold),)),
                                               ),
                                             ),
                                           ),
                                           SizedBox(height: 10,),
                                           TextButton(
                                             onPressed: (){

                                               cartProvider.removeItem(modeldish);

                                             },
                                             child: Center(child: Text('Remove from Cart',style: TextStyle(
                                               fontSize: 20,color: Colors.red,letterSpacing: 0.6,fontWeight: FontWeight.bold,
                                             ),)),
                                           ),
                                         ],
                                       ),
                                     );
                                   });

                                   },
                                 leading:Container(
                                   height: 25,
                                   width: 25,
                                   decoration: BoxDecoration(
                                     border: Border.all(
                                       width: 1, color: Colors.grey,
                                     ),
                                   ),
                                   child: Center(child: Text('${modeldish.count}',style: TextStyle(color: Colors.green,fontSize:14,fontWeight: FontWeight.bold),)),
                                 ) ,
                                 title:Text('${modeldish.name}',
                                 style: TextStyle(letterSpacing:0.5,fontWeight: FontWeight.bold),
                                 ) ,
                                 trailing: Text('\$${modeldish.price}',style: TextStyle(fontSize: 18,letterSpacing: 0.5,fontWeight: FontWeight.bold),),
                               ),
                               if(index==dishList.length-1)...{
                                 ListTile(
                                   title: Text('Total',
                                     style: TextStyle(fontSize:20,letterSpacing:0.5,fontWeight: FontWeight.bold),


                                   ),
                                   trailing: Text('\$${itemPrice()}',style: TextStyle(fontSize:20,letterSpacing:0.5,fontWeight: FontWeight.bold),),
                                 ),
                               }
                             ],
                           ),
                         );
                  }
                  ),
          ),

          Container(
            height: 50,
            width: double.infinity,
            color: Colors.green,

            child: TextButton(
              onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DeliveryAddress()));
              
              },
              child: Center(child: Text('CheckOut',style: TextStyle(fontSize: 20,color: Colors.white,letterSpacing: 0.6,fontWeight: FontWeight.bold),)),
            ),
          )

        ],
      ),

    );
  }
  int itemPrice(){
    var sum=0;
    for(int i=0;i<dishList.length;i++){
      ModelDish modelDish=dishList[i];
      int j=modelDish.price;
      sum=sum+j;
    }
    return sum;
  }
 void updateList(ModelDish md,int j,int s){
   int c=0; int p=0;
   //List<ModelDish> modelDish=model;
   p=dishList[j].price/dishList[j].count;
   md.price=p*md.count;
   dishList.removeAt(j);
setState(() {
  dishList.insert(j,md);
});
 }

 void decrement(){
    setState(() {
      add--;

    });
 }
 void increment(){
    setState(() {
      add++;

    });
 }


}

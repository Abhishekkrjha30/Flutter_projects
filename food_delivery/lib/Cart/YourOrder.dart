import 'package:flutter/material.dart';

class YourOrder extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {

    return YourOrderState();
  }

}

class YourOrderState extends State<YourOrder>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        title: Text('Your Order'),
        centerTitle: true,
        iconTheme: IconThemeData(color:  Colors.green),
      ),
      body: ListView(
          children: [
            Divider(
              thickness: 10,
              color: Theme.of(context).backgroundColor,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text('Delivery Details',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w800,letterSpacing: 0.6),),
            ),
            ListTile(
              title: Text('Address',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600)),
              subtitle: Text('Patna,Bihar-800020'),
            ),
            Divider(
              indent: 10,
              endIndent: 10,
              color: Theme.of(context).backgroundColor,
            ),
            ListTile(
              title: Text('Type',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
              subtitle: Text('Deliver to door'),
            ),
            Divider(
              thickness: 10,
              color: Theme.of(context).backgroundColor,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text('Order Summary',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w800,letterSpacing: 0.6),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12,right: 10,bottom: 10),
              child: Text('Bouche',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
            ),
            ListTile(
              leading: Container(
                height: 25,width: 25,color: Theme.of(context).backgroundColor,
                child: Center(child: Text('4',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)),
              ),
              title: Text('Chocolate Fondant'),
            ),
            ListTile(
              leading: Container(
                height: 25,width: 25,color: Theme.of(context).backgroundColor,
                child: Center(child: Text('2',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)),
              ),
              title: Text('Apple Tatin'),
            ),
            ListTile(
              leading: Container(
                height: 25,width: 25,color: Theme.of(context).backgroundColor,
                child: Center(child: Text('1',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)),
              ),
              title: Text('Steak Frites'),
            ),
            Padding(
              padding: const EdgeInsets.all(14),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Total',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w800),),
                  Text('\$183.00',style: TextStyle(fontSize: 20,),),
                ],
              ),
            ),

          ],

      ),


    );
  }
}



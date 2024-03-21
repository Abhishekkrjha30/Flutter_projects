import 'package:flutter/material.dart';
import 'package:food_delivery/Cart/YourOrder.dart';

class CheckOut extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {

    return CheckOutState();
  }

}

class CheckOutState extends State<CheckOut>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // backgroundColor: Colors.grey[100],
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.green),
        //  backgroundColor: Colors.grey[100],
      ),
      body: Stack(
        children: [
          Container(
            height: 250,
            color:Theme.of(context).primaryColor,
            child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text('CheckOut',style: TextStyle(fontSize: 24,letterSpacing: 0.7,fontWeight: FontWeight.bold),),
                  ),
                  ListTile(
                    title: Text('Payment',style: TextStyle(fontSize:20,color: Colors.green,fontWeight: FontWeight.w800),),
                    trailing: Text('Cash on delivery',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800),),
                  ),
                  Divider(),
                  ListTile(
                    title: Text('Deliver to',style: TextStyle(fontSize:20,color: Colors.green,fontWeight: FontWeight.w800),),
                    trailing: Text('patna Bihar-800020',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800),),
                  ),
                  Divider(),
                  ListTile(
                    title: Text('Total',style: TextStyle(fontSize:20,color: Colors.green,fontWeight: FontWeight.w800),),
                    trailing: Text('\$106.0',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800),),
                  ),
                ],
              ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                //alignment: Alignment.bottomCenter,

                height: 55,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.green,

                ),
                child: TextButton(
                  onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>YourOrder()));

                  },
                  child: Center(child: Text('PLACE ORDER',style: TextStyle(
                      fontSize: 20,color: Colors.white,letterSpacing: 0.7,fontWeight: FontWeight.bold),)),
                ),
              ),
            ),
          ),

        ],
      ),


    );

  }
}



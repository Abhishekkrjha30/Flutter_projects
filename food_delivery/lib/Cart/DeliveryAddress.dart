import 'package:flutter/material.dart';
import 'package:food_delivery/Cart/CheckOut.dart';

class DeliveryAddress extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {

    return DeliveryAddressState();
  }

}

class DeliveryAddressState extends State<DeliveryAddress>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.green),

        title: Text('Delivery Address',style: TextStyle(fontWeight: FontWeight.w600),),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            SizedBox(height: 10,),
            ListTile(
              leading: Text('Line 1    ',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w800),),
              title: Container(
                height: 45,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.green
                      )

                    )
                  ),

                ),
              ),
            ),
            SizedBox(height: 10,),
            ListTile(
              leading: Text('Line 2    ',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w800),),
              title: Container(
                height: 45,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.green
                      )

                    )
                  ),

                ),
              ),
            ),
            SizedBox(height: 10,),
            ListTile(
              leading: Text('Zip\nCode      ',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w800),),
              title: Container(
                height: 45,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.green
                      )

                    )
                  ),

                ),
              ),
            ),
            SizedBox(height: 10,),
            ListTile(
              leading: Text('City        ',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w800),),
              title: Container(
                height: 45,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.green
                      )

                    )
                  ),

                ),
              ),
            ),
            SizedBox(height: 10,),
            ListTile(
              leading: Text('Country  ',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w800),),
              title: Container(
                height: 45,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.green
                      )

                    )
                  ),

                ),
              ),
            ),
            SizedBox(height: 20,),
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
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>CheckOut()));

                  },
                  child: Center(child: Text('Save Address',style: TextStyle(
                      fontSize: 20,color: Colors.white,letterSpacing: 0.7,fontWeight: FontWeight.bold),)),
                ),
              ),
            ),

          ],
        ),
      ),

    );
  }
}
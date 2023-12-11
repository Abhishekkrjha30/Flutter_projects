import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text("Prodect Details"),
        leading: Icon(Icons.arrow_back_ios_new_rounded,size: 30,color: Colors.blueGrey,),
        actions: [
          
          Icon(Icons.save_as_rounded,size: 30,color: Colors.blueGrey,)
        ],
      ),
      body: Container(

        child: SingleChildScrollView(
          child: Column(

            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  height: 400,
                  width: 1100,
                  decoration: BoxDecoration(
                    color: Colors.indigo,

                    borderRadius: BorderRadius.only(bottomLeft:Radius.circular(11),bottomRight: Radius.circular(11)),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 120,),
                      Icon(Icons.photo_library_outlined,size: 120,color: Colors.white,),
                      Text("Image Here",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),)
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30,),
              Container(
                  padding: EdgeInsets.only(left: 20),
                  child: Text("Lorem Ipsum",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)),

              SizedBox(height: 30,),
              Container(
                padding: EdgeInsets.only(left: 20),
                child: Text("Lorem ipsum dolor sit omet , consetetur sodiipscing elitr.\nsed diom nonurmy eirmod tempot invidunt ut lobbore et\ndiam voluptua  magno erat , sed ",style: TextStyle(fontWeight: FontWeight.bold),),
              ),
              Container(
                margin: EdgeInsets.only(left: 30),
                child: Row(
                  children: [
                    Column(
                      children: [
                        SizedBox(height: 20,),
                        Text("Size",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                        SizedBox(height: 10,width: 20,),
                        Container(
                          height: 50,
                          width: 200,
                          padding: EdgeInsets.only(left: 30,top: 16),
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(11)
                          ),
                          child:Text("40                         >",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold)) ,
                        ),


                      ],
                    ),
                    SizedBox(width: 50,),
                    Column(
                      children: [
                        SizedBox(height: 20,),
                        Text("Color",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                        SizedBox(height: 10,width: 20,),
                        Container(
                          height: 50,
                          width: 200,
                          padding: EdgeInsets.only(left: 30,top: 16),
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(11)
                          ),
                          child:Text("Blue                         >",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),) ,
                        ),
                      ],
                    ),

                  ],
                ),
              ),
              SizedBox(height: 80,),
              Center(
                child: Container(
                  height: 50,
                  width: 1000,
                  decoration: BoxDecoration(
                    color: Colors.orangeAccent,
                    borderRadius: BorderRadius.circular(11),

                  ),
                  child: TextButton(
                      onPressed: (){},
                      child: Row(
                        children: [
                          SizedBox(width: 400,),
                          Icon(Icons.shopping_cart_outlined,color: Colors.white,),
                          SizedBox(width: 20,),
                          Text('Add to cart',style: TextStyle(fontSize: 20,color: Colors.white),),
                        ],
                      )
                  ),
                ),
              ),
              SizedBox(height: 50,)

            ],
          ),
        ),
      )

    );
  }


}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Explore extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      appBar: AppBar(title: Text("Explore",style: TextStyle(color: Colors.white),),
      backgroundColor: Colors.indigo,

      actions: [
        Icon(Icons.square_rounded,size:50 ,color: Colors.orange,),
      ],
      ),
      body:  Container(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  padding: EdgeInsets.only(left: 15),
                  child: Text("Find product easier here",style: TextStyle(color: Colors.white),)),

              SizedBox(height: 20,),
              Center(
                child: Container(
                    height: 260,
                    width: 1000,
                    decoration: BoxDecoration(
                      color:Colors.lightBlue,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(11),topRight: Radius.circular(11)),
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 60,),
                        Icon(Icons.photo_library_outlined,size: 130,color: Colors.white,),
                        Text("Image Here",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)
                      ],
                    )

                ),
              ),
              Center(
                child: Container(
                  padding: EdgeInsets.only(top: 10,left: 10),
                  height: 50,
                  width: 1000,
                  decoration: BoxDecoration(
                    color:Colors.white,
                    borderRadius: BorderRadius.only(bottomLeft:Radius.circular(11),bottomRight:Radius.circular(11)),
                  ),
                  child:Text("Lamp",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                ),
              ),
              SizedBox(height: 20,),
              Center(
                child: Container(
                    height: 260,
                    width: 1000,
                    decoration: BoxDecoration(
                      color:Colors.lightBlue,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(11),topRight: Radius.circular(11)),
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 60,),
                        Icon(Icons.photo_library_outlined,size: 130,color: Colors.white,),
                        Text("Image Here",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)
                      ],
                    )
                ),
              ),
              Center(
                child: Container(
                  padding: EdgeInsets.only(top: 10,left: 10),
                  height: 50,
                  width: 1000,
                  decoration: BoxDecoration(
                    color:Colors.white,
                    borderRadius: BorderRadius.only(bottomLeft:Radius.circular(11),bottomRight:Radius.circular(11)),
                  ),
                  child:Text("Car",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                ),
              ),
              SizedBox(height: 20,),
              Center(
                child: Container(
                    height: 260,
                    width: 1000,
                    decoration: BoxDecoration(
                      color:Colors.lightBlue,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(11),topRight: Radius.circular(11)),
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 60,),
                        Icon(Icons.photo_library_outlined,size: 130,color: Colors.white,),
                        Text("Image Here",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)
                      ],
                    )
                ),
              ),
              Center(
                child: Container(
                  padding: EdgeInsets.only(top: 10,left: 10),
                  height: 50,
                  width: 1000,
                  decoration: BoxDecoration(
                    color:Colors.white,
                    borderRadius: BorderRadius.only(bottomLeft:Radius.circular(11),bottomRight:Radius.circular(11)),
                  ),
                  child:Text("Plant",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                ),
              ),
              SizedBox(height: 40,)
            ],
          ),
        ),
      ),
    );
  }

}
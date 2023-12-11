import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Welcome back',style: TextStyle(fontSize: 15),),
      actions: [
        Icon(Icons.shopping_cart)
      ],
      ),
      
      
      body:  SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Container(
                padding: EdgeInsets.only(left: 20),
                child: Text("Samantha William",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),

            SizedBox(height: 20,),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 20),
                  height: 40,
                  width: 500,
                  child: TextFormField(

                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search,size: 30,),
                        labelText: "Searching item",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)
                        )
                    ),
                  ),
                ),
                SizedBox(width: 20,),
                Icon(Icons.screen_search_desktop_rounded,color: Colors.orange,size:50,)
              ],
            ),
            SizedBox(height: 30,),
            Center(
              child: Container(
                height: 300,
                width: 1000,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.cyan
                ),
                child:  Column(
                  children: [
                    SizedBox(height: 80,),
                    Icon(Icons.photo_library_outlined,size: 120,color: Colors.white,),
                    Text("Image Here",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),)
                  ],
                ),


              ),
            ),
            SizedBox(height: 10,),
            Center(
              child: Row(
                children: [
                  SizedBox(width: 480,),
                  Icon(Icons.circle,size: 10,color: Colors.orange,),
                  SizedBox(width: 8,),
                  Icon(Icons.circle,size: 10,color: Colors.grey,),
                  SizedBox(width: 8,),
                  Icon(Icons.circle,size: 10,color: Colors.grey,),
                  SizedBox(width: 8,),
                  Icon(Icons.circle,size: 10,color: Colors.grey,),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 20),
              child:
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [

                  Column(
                    children: [
                      TextButton(onPressed: (){},
                        child:Icon(Icons.music_video_rounded,size: 40, color: Colors.cyan,),
                      ),
                      Text("Music",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)
                    ],
                  ),
                  Column(
                    children: [
                      TextButton(onPressed: (){},
                        child:Icon(Icons.maps_home_work_outlined,size: 40, color: Colors.cyan,),
                      ),
                      Text("Property",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)
                    ],
                  ) ,
                  Column(
                    children: [
                      TextButton(onPressed: (){},
                        child:Icon(Icons.sports_esports,size: 40, color: Colors.cyan,),
                      ),
                      Text("Game",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)
                    ],
                  ), Column(
                    children: [
                      TextButton(onPressed: (){},
                        child:Icon(Icons.gas_meter_sharp,size: 40, color: Colors.cyan,),
                      ),
                      Text("Gadget",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)
                    ],
                  )

                ],
              ) ,
            ),
            SizedBox(height: 30,),
            Container(
              padding: EdgeInsets.only(left: 20),
              child:
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [

                  Column(
                    children: [
                      TextButton(onPressed: (){},
                        child:Icon(Icons.medical_information_rounded,size: 40, color: Colors.cyan,),
                      ),
                      Text("Medicines",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)
                    ],
                  ),
                  Column(
                    children: [
                      TextButton(onPressed: (){},
                        child:Icon(Icons.sports_baseball,size: 40, color: Colors.cyan,),
                      ),
                      Text("Sports",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)
                    ],
                  ) ,
                  Column(
                    children: [
                      TextButton(onPressed: (){},
                        child:Icon(Icons.bookmarks_rounded,size: 40, color: Colors.cyan,),
                      ),
                      Text("Book",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)
                    ],
                  ), Column(
                    children: [
                      TextButton(onPressed: (){},
                        child:Icon(Icons.electric_meter_rounded,size: 40, color: Colors.cyan,),
                      ),
                      Text("Electric",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)
                    ],
                  )
                ],
              ) ,
            ),
            SizedBox(height: 30,),
            Container(
              padding:EdgeInsets.only(left: 40),
              child: RichText(text:  TextSpan(
                  children: [
                    TextSpan(text: "Best Seller",style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold,)),
                    WidgetSpan(
                        child:Padding(padding: EdgeInsets.only(left: 800))
                    ),
                    TextSpan(text: "See All",style:TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.orange,)),
                  ]
              )
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 30,top: 30),
              child: Row(

                children: [
                  SizedBox(width: 10,),
                  Column(
                    children: [
                      Container(
                        height: 100,
                        width: 140,
                        decoration: BoxDecoration(
                          color: Colors.cyan,
                          borderRadius: BorderRadius.circular(11),
                        ),
                        child:  Column(
                          children: [
                            SizedBox(height: 15,),
                            Icon(Icons.photo_library_outlined,size:50,color: Colors.white,),
                            Text("Image Here",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold,color: Colors.white),)
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 10,top: 10),
                        height: 60,
                        width: 140,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Plant',style:TextStyle(fontWeight:FontWeight.bold),),
                            Row(
                              children: [
                                Icon(Icons.star,color: Colors.yellow,size: 10,),
                                Icon(Icons.star,color: Colors.yellow,size: 10,),
                                Icon(Icons.star,color: Colors.yellow,size: 10,),
                                Icon(Icons.star,color: Colors.yellow,size: 10,),
                                Icon(Icons.star,color: Colors.yellow,size: 10,),
                                Text("5.0",style: TextStyle(fontSize: 14 ,fontWeight:FontWeight.bold),),
                              ],
                            )
                          ],
                        ),
                      ),

                    ],
                  ),
                  SizedBox(width: 50,),
                  Column(
                    children: [
                      Container(
                        height: 100,
                        width: 140,
                        decoration: BoxDecoration(
                          color: Colors.cyan,
                          borderRadius: BorderRadius.circular(11),
                        ),
                        child:  Column(
                          children: [
                            SizedBox(height: 15,),
                            Icon(Icons.photo_library_outlined,size:50,color: Colors.white,),
                            Text("Image Here",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold,color: Colors.white),)
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 10,top: 10),
                        height: 60,
                        width: 140,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Lamp',style:TextStyle(fontWeight:FontWeight.bold),),
                            Row(
                              children: [
                                Icon(Icons.star,color: Colors.yellow,size: 10,),
                                Icon(Icons.star,color: Colors.yellow,size: 10,),
                                Icon(Icons.star,color: Colors.yellow,size: 10,),
                                Icon(Icons.star,color: Colors.yellow,size: 10,),
                                Icon(Icons.star,color: Colors.yellow,size: 10,),
                                Text("5.0",style: TextStyle(fontSize: 14 ,fontWeight:FontWeight.bold),),
                              ],
                            )
                          ],
                        ),
                      ),

                    ],
                  ),
                  SizedBox(width: 50,),
                  Column(
                    children: [
                      Container(
                        height: 100,
                        width: 140,
                        decoration: BoxDecoration(
                          color: Colors.cyan,
                          borderRadius: BorderRadius.circular(11),
                        ),
                        child:  Column(
                          children: [
                            SizedBox(height: 15,),
                            Icon(Icons.photo_library_outlined,size:50,color: Colors.white,),
                            Text("Image Here",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold,color: Colors.white),)
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 10,top: 10),
                        height: 60,
                        width: 140,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Chair',style:TextStyle(fontWeight:FontWeight.bold),),
                            Row(
                              children: [
                                Icon(Icons.star,color: Colors.yellow,size: 10,),
                                Icon(Icons.star,color: Colors.yellow,size: 10,),
                                Icon(Icons.star,color: Colors.yellow,size: 10,),
                                Icon(Icons.star,color: Colors.yellow,size: 10,),
                                Icon(Icons.star,color: Colors.yellow,size: 10,),
                                Text("5.0",style: TextStyle(fontSize: 14 ,fontWeight:FontWeight.bold),),
                              ],
                            )
                          ],
                        ),
                      ),

                    ],
                  ),
                ],
              ),
            ),

            SizedBox(height: 40,)
          ],
        ),
      ),
        
    );
  }
  
}
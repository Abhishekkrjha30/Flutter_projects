import 'package:flutter/material.dart';

class LinkAccount extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return LinkAccountState();
  }

}

class LinkAccountState extends State<LinkAccount>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title:Center(child: Text("Link New Account ",style: TextStyle(color: Colors.white),)),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Text('Done',style: TextStyle(color: Colors.white,fontSize: 15),),
          )
        ],
      ),
      body: ListView(
        children: [
          SizedBox(height: 15,),
                SingleChildScrollView(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      TextButton(onPressed: (){}, child:
                          Column(
                            children: [
                              Icon(Icons.generating_tokens_sharp,color:Colors.indigo,size: 60,),
                              Text('Chase Bank',style: TextStyle(color:Colors.grey,fontSize: 16),)
                            ],
                          ),
                      ),
                      TextButton(onPressed: (){}, child:
                      Column(
                        children: [
                          Icon(Icons.adb_outlined,color:Colors.red,size: 60,),
                          Text('Fidelity',style: TextStyle(color:Colors.grey,fontSize: 16),)
                        ],
                      ),
                      ),
                      TextButton(onPressed: (){}, child:
                      Column(
                        children: [
                          Icon(Icons.energy_savings_leaf,color:Colors.green,size: 60,),
                          Text('Wealthfront',style: TextStyle(color:Colors.grey,fontSize: 16),)
                          ],
                      ),
                      ),

                    ],
                  ),
                ),
          SizedBox(height: 20,),
               SingleChildScrollView(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      TextButton(onPressed: (){}, child:
                          Column(
                            children: [
                              Icon(Icons.verified_user_outlined,color:Colors.red.shade900,size: 60,),
                              Text('Vanguard',style: TextStyle(color:Colors.grey,fontSize: 16),)
                            ],
                          ),
                      ),
                      TextButton(onPressed: (){}, child:
                      Column(
                        children: [
                          Icon(Icons.wallpaper_sharp,color:Colors.purple.shade800,size: 60,),
                          Text('Wealthfront',style: TextStyle(color:Colors.grey,fontSize: 16),)
                        ],
                      ),
                      ),
                      TextButton(onPressed: (){}, child:
                      Column(
                        children: [
                          Icon(Icons.motion_photos_on_rounded,color:Colors.green.shade900,size: 60,),
                          Text('Bank of\nAmerica',style: TextStyle(color:Colors.grey,fontSize: 16),)
                          ],
                      ),
                      ),

                    ],
                  ),
                ),
          SizedBox(height: 20,),
              SingleChildScrollView(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      TextButton(onPressed: (){}, child:
                          Column(
                            children: [
                              Icon(Icons.radar_outlined,color:Colors.orangeAccent,size: 60,),
                              Text('Robinhood',style: TextStyle(color:Colors.grey,fontSize: 16),)
                            ],
                          ),
                      ),
                      TextButton(onPressed: (){}, child:
                      Column(
                        children: [
                          Icon(Icons.ac_unit,color:Colors.green,size: 60,),
                          Text('Coinbase',style: TextStyle(color:Colors.grey,fontSize: 16),)
                        ],
                      ),
                      ),
                      TextButton(onPressed: (){}, child:
                      Column(
                        children: [
                          Icon(Icons.maps_home_work_outlined,color:Colors.indigo[900],size: 60,),
                          Text('Real Estate',style: TextStyle(color:Colors.grey,fontSize: 16),)
                          ],
                      ),
                      ),

                    ],
                  ),
                ),
          SizedBox(height: 20,),


        ],
      ),
    );
  }
}
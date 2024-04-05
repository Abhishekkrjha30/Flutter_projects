import 'package:flutter/material.dart';

class TopCategories extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return TopCategoriesState();
  }

}

class TopCategoriesState extends State<TopCategories>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),

      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          color: Colors.white,
          child: ListView(
            children: [


              Padding(
                padding: const EdgeInsets.only(top:10),
                child: ListTile(
                  title:Text('All Spending Categories',style: TextStyle(fontSize: 20,letterSpacing: 0.6,)),
                ),

              ),
              Divider(),
              ListTile(
                onTap: (){

                },
                leading: Icon(Icons.electrical_services_rounded,color:Colors.green,size: 40,),
                title: Text('HOME & UTILITIES',style: TextStyle(fontSize: 12,color: Colors.grey,),),
                subtitle: Text('396,98 spend',style: TextStyle(fontSize: 16,color: Colors.black),),
                trailing: Icon(Icons.arrow_forward_ios_outlined,color: Colors.black26,),
              ),
              Divider(),
              ListTile(
                onTap: (){

                },
                leading: Icon(Icons.deck_rounded,color:Colors.orangeAccent,size: 40,),
                title: Text('TRAVEL',style: TextStyle(fontSize: 12,color: Colors.grey,),),
                subtitle: Text('396,98 spend',style: TextStyle(fontSize: 16,color: Colors.black),),
                trailing: Icon(Icons.arrow_forward_ios_outlined,color: Colors.black26,),
              ),
              Divider(),
              ListTile(
                onTap: (){

                },
                leading: Icon(Icons.pedal_bike_rounded,color:Colors.limeAccent,size: 40,),
                title: Text('RIDE SHARING',style: TextStyle(fontSize: 12,color: Colors.grey,),),
                subtitle: Text('396,98 spend',style: TextStyle(fontSize: 16,color: Colors.black),),
                trailing: Icon(Icons.arrow_forward_ios_outlined,color: Colors.black26,),
              ),
              Divider(),
              ListTile(
                onTap: (){

                },
                leading: Icon(Icons.shopping_bag_rounded,color:Colors.green,size: 40,),
                title: Text('GROCERIES',style: TextStyle(fontSize: 12,color: Colors.grey,),),
                subtitle: Text('396,98 spend',style: TextStyle(fontSize: 16,color: Colors.black),),
                trailing: Icon(Icons.arrow_forward_ios_outlined,color: Colors.black26,),
              ),
              Divider(),
              ListTile(
                onTap: (){

                },
                leading: Icon(Icons.water_drop_outlined,color:Colors.lightBlue,size: 40,),
                title: Text('DRINKS',style: TextStyle(fontSize: 12,color: Colors.grey,),),
                subtitle: Text('396,98 spend',style: TextStyle(fontSize: 16,color: Colors.black),),
                trailing: Icon(Icons.arrow_forward_ios_outlined,color: Colors.black26,),
              ),
              Divider(),
              ListTile(
                onTap: (){

                },
                leading: Icon(Icons.home_work_outlined,color:Colors.redAccent,size: 40,),
                title: Text('RENT',style: TextStyle(fontSize: 12,color: Colors.grey,),),
                subtitle: Text('396,98 spend',style: TextStyle(fontSize: 16,color: Colors.black),),
                trailing: Icon(Icons.arrow_forward_ios_outlined,color: Colors.black26,),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
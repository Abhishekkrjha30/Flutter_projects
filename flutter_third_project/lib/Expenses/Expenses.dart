import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_third_project/Expenses/TOPCATEGOries.dart';

class Expenses extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return ExpensesState();
  }

}

class ExpensesState extends State<Expenses>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        backgroundColor:  Colors.blue,
        title:  Text('Expenses',style: TextStyle(color: Colors.white),),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          color: Colors.white,
          child: ListView(
            children:[
              Container(
                height: 300,width: 300,
                child:PieChart(


                  PieChartData(
                    centerSpaceRadius: 70,
                    sections: [
                      PieChartSectionData(
                          radius: 50,

                          title:'30%\nDrink',
                        value: 30,
                        color: Colors.green
                      ),
                      PieChartSectionData(
                          radius: 50,

                          title:'10%\nUber',
                        value: 10,
                        color: Colors.yellow
                      ),
                      PieChartSectionData(
                          radius: 50,

                          title:'18%\nGroc',
                        value: 18,
                        color: Colors.orange
                      ),
                      PieChartSectionData(
                          radius: 50,

                          title:'25%\nRent',

                        value: 25,
                        color: Colors.pinkAccent
                      ),
                      PieChartSectionData(
                          radius: 50,

                          title:'19%\nRestro',
                        value: 19,
                        color: Colors.blueAccent
                      )
                    ]
                  )
                ),
              ),
              Divider(
                height: 20,
                thickness: 20,
                color: Colors.black12,
              ),


              Padding(
                padding: const EdgeInsets.only(top:10),
                child: ListTile(
                  title:Text('Top Spending Categories',style: TextStyle(fontSize: 20,letterSpacing: 0.6,)),
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
              Divider(),
              ListTile(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder:( context)=>TopCategories()));

                },
                title: Text('View All Categories',style: TextStyle(fontSize: 17,),),
                trailing: Icon(Icons.arrow_forward_ios_outlined,color: Colors.black26,),
              ),
              Divider(),

            ],
          ),
        ),
      ),
    );
  }
}
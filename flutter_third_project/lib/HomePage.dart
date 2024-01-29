import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   return HomePageState();
  }

}

class HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        backgroundColor:  Colors.blue,
        title:  Text('Home',style: TextStyle(color: Colors.white),),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          color: Colors.white,
          child: ListView(
            children: [
              Container(
                height: 300,
                child: LineChart(
                  LineChartData(
                    minX: 0,
                    maxX: 10,
                    minY: 0,
                    maxY: 10,
                    titlesData:FlTitlesData(
                      topTitles: AxisTitles(sideTitles:SideTitles(showTitles: false)),
                      leftTitles: AxisTitles(sideTitles:SideTitles(showTitles: false)),
                    ),
                    gridData: FlGridData(
                      show: true,

                      getDrawingHorizontalLine: (value){
                        return FlLine(
                         // color: Colors.yellow,
                          strokeWidth: 0
                        );
                      },
                      drawVerticalLine: false,
                      drawHorizontalLine: false
                    ),
                    borderData:FlBorderData(
                      show: false,
                      //border: Border.all(color: Colors.yellow,width: 1)
                    ),

                    lineBarsData: [
                      LineChartBarData(
                        spots: [
                          FlSpot(0, 2),
                          FlSpot(2,4.6),
                          FlSpot(2.5,2),
                           FlSpot(4,7),
                          FlSpot(4.3,4.6),
                          FlSpot(5,9),
                          FlSpot(6.5,1),
                          FlSpot(7.5,8.5),
                          FlSpot(8,1.5),
                          FlSpot(9,9.5),
                          FlSpot(10,4),

                        ],
                            isCurved:true,
                        color: Colors.orange.shade600,
                          barWidth: 5,
                        belowBarData: BarAreaData(
                          show: true,
                          color: Colors.orange.shade200
                        )
                      )
                    ]
                  )
                ),
              ),

              Divider(height: 20,thickness: 20,color: Colors.black12,),
              Padding(
                padding: const EdgeInsets.only(top:10),
                child: ListTile(
                  title:Text('Cash',style: TextStyle(fontSize: 20,letterSpacing: 0.6,)),
                  ),

              ),
              Divider(),
              ListTile(
                onTap: (){

                },
                leading: Icon(Icons.energy_savings_leaf,color:Colors.purple,size: 40,),
                title: Text('WEALTHFRONT',style: TextStyle(fontSize: 12,color: Colors.grey,),),
                subtitle: Text('Personal Savings',style: TextStyle(fontSize: 16,color: Colors.black),),
                trailing: Text("9,2875",style: TextStyle(fontSize: 18,color: Colors.black),),
              ),
              Divider(),
              ListTile(
                onTap: (){

                },
                leading: Icon(Icons.motion_photos_on_rounded,color:Colors.red,size: 40,),
                title: Text('BANK OF AMERICA',style: TextStyle(fontSize: 12,color: Colors.grey,),),
                subtitle: Text('Bofa Checkings',style: TextStyle(fontSize: 16,color: Colors.black),),
                trailing: Text("12,875",style: TextStyle(fontSize: 18,color: Colors.black),),
              ),
              Divider(),
              ListTile(
                onTap: (){

                },
                leading: Icon(Icons.radar_outlined,color:Colors.green,size: 40,),
                title: Text('ROBINHOOD',style: TextStyle(fontSize: 12,color: Colors.grey,),),
                subtitle: Text('Robinhood Cash',style: TextStyle(fontSize: 16,color: Colors.black),),
                trailing: Text("7,123",style: TextStyle(fontSize: 18,color: Colors.black),),
              ),
              Divider(),
              ListTile(
                onTap: (){

                },
                leading: Icon(Icons.ac_unit,color:Colors.indigo,size: 40,),
                title: Text('COINBASE PRO',style: TextStyle(fontSize: 12,color: Colors.grey,),),
                subtitle: Text('Coinbase USD',style: TextStyle(fontSize: 16,color: Colors.black),),
                trailing: Text("15,712",style: TextStyle(fontSize: 18,color: Colors.black),),
              ),
              Divider(),
              ListTile(
                onTap: (){

                },
                leading: Icon(Icons.motion_photos_on_rounded,color:Colors.red,size: 40,),
                title: Text('BANK OF AMERICA',style: TextStyle(fontSize: 12,color: Colors.grey,),),
                subtitle: Text('Bofa Checkings',style: TextStyle(fontSize: 16,color: Colors.black),),
                trailing: Text("12,875",style: TextStyle(fontSize: 18,color: Colors.black),),
              ),
              Divider(
                height: 20,color: Colors.black12,thickness: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(top:10),
                child: ListTile(
                  title:Text('Investment',style: TextStyle(fontSize: 20,letterSpacing: 0.6,)),
                ),

              ),
              Divider(),
              ListTile(
                onTap: (){

                },
                leading: Icon(Icons.energy_savings_leaf,color:Colors.purple,size: 40,),
                title: Text('WEALTHFRONT',style: TextStyle(fontSize: 12,color: Colors.grey,),),
                subtitle: Text('Personal Investment',style: TextStyle(fontSize: 16,color: Colors.black),),
                trailing: Text("9,2875",style: TextStyle(fontSize: 18,color: Colors.black),),
              ),
              Divider(),
              ListTile(
                onTap: (){

                },
                leading: Icon(Icons.radar_outlined,color:Colors.green,size: 40,),
                title: Text('ROBINHOOD',style: TextStyle(fontSize: 12,color: Colors.grey,),),
                subtitle: Text('Robinhood Personal',style: TextStyle(fontSize: 16,color: Colors.black),),
                trailing: Text("7,123",style: TextStyle(fontSize: 18,color: Colors.black),),
              ),
              Divider(),
              ListTile(
                onTap: (){

                },
                leading: Icon(Icons.ac_unit,color:Colors.indigo,size: 40,),
                title: Text('COINBASE PRO',style: TextStyle(fontSize: 12,color: Colors.grey,),),
                subtitle: Text('Personal Crypto',style: TextStyle(fontSize: 16,color: Colors.black),),
                trailing: Text("15,712",style: TextStyle(fontSize: 18,color: Colors.black),),
              ),
              Divider(),
              ListTile(
                onTap: (){

                },
                leading: Icon(Icons.next_plan_sharp,color:Colors.greenAccent,size: 40,),
                title: Text('FIDLITY',style: TextStyle(fontSize: 12,color: Colors.grey,),),
                subtitle: Text('401(K)',style: TextStyle(fontSize: 16,color: Colors.black),),
                trailing: Text("12,012",style: TextStyle(fontSize: 18,color: Colors.black),),
              ),
              Divider(
                height: 20,color: Colors.black12,thickness: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(top:10),
                child: ListTile(
                  title:Text('Liabilities',style: TextStyle(fontSize: 20,letterSpacing: 0.6,)),
                ),

              ),
              Divider(),
              ListTile(
                onTap: (){

                },
                leading: Icon(Icons.energy_savings_leaf,color:Colors.purple,size: 40,),
                title: Text('WEALTHFRONT',style: TextStyle(fontSize: 12,color: Colors.grey,),),
                subtitle: Text('Travel Credit Card',style: TextStyle(fontSize: 16,color: Colors.black),),
                trailing: Text("9,2875",style: TextStyle(fontSize: 18,color: Colors.black),),
              ),
              Divider(),
              ListTile(
                onTap: (){

                },
                leading: Icon(Icons.newspaper_outlined,color:Colors.green,size: 40,),
                title: Text('AMERICAN EXPRESS',style: TextStyle(fontSize: 12,color: Colors.grey,),),
                subtitle: Text('American Express Basic',style: TextStyle(fontSize: 16,color: Colors.black),),
                trailing: Text("12,012",style: TextStyle(fontSize: 18,color: Colors.black),),
              )

            ],
          ),
        ),
      ),
    );
  }
}
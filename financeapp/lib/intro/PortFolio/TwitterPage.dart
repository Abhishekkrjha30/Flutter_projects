import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class TwitterPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return TwitterPageState();
  }

}

class TwitterPageState extends State<TwitterPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Twitter",style: TextStyle(color: Colors.white,letterSpacing: 0.6)),
        centerTitle: true,
        // leading: Icon(Icons.arrow_back_ios,color: Colors.white,),

        actions: [

          Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Icon(Icons.control_point,color: Colors.white,)
          ),
        ],
      ),
      body: ListView(
          children:[
            Container(
              color: Colors.black12,height: 300,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  height: 300,
                  color: Colors.white,
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
              ),
            ),
            //  Divider(height: 16,thickness: 16,color: Colors.black12,),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top:13),
                  child: ListTile(
                    title: Text('Your Position',style: TextStyle(fontSize: 20,letterSpacing: 0.6,)),
                  ),
                ),
                SingleChildScrollView(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top:10,left: 15,right: 15,),
                        child: Text('SHARES',style: TextStyle(color: Colors.grey,fontSize: 15),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 120),
                        child: Text('EQUITY',style: TextStyle(color: Colors.grey,fontSize: 15),),
                      ),

                    ],

                  ),
                ),
                SingleChildScrollView(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top:10,left: 15,right: 15,),
                        child: Text('5.0',style: TextStyle(color: Colors.black,fontSize: 15),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 150),
                        child: Text('\$955.00',style: TextStyle(color: Colors.black,fontSize: 15),),
                      ),

                    ],

                  ),
                ),
                SingleChildScrollView(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top:10,left: 15,right: 15,),
                        child: Text('AVG COST',style: TextStyle(color: Colors.grey,fontSize: 15),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 105),
                        child: Text('PORTFOLIO DIVERSITY',style: TextStyle(color: Colors.grey,fontSize: 15),),
                      ),

                    ],

                  ),
                ),
                SingleChildScrollView(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top:10,left: 15,right: 15,),
                        child: Text('171.46',style: TextStyle(color: Colors.black,fontSize: 15),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 130),
                        child: Text('7.12%',style: TextStyle(color: Colors.black,fontSize: 15),),
                      ),

                    ],

                  ),
                ),
                ListTile(
                  title: Text('TODAY RETURN',style: TextStyle(color: Colors.grey,fontSize: 15)),
                  trailing: Text('-\$20.45(-2.10%)',style: TextStyle(color: Colors.black,fontSize: 15)),
                ),
                Divider(),
                ListTile(
                  title: Text('TOTAL RETURN',style: TextStyle(color: Colors.grey,fontSize: 15)),
                  trailing: Text('+\$97.71(+11.40%)',style: TextStyle(color: Colors.black,fontSize: 15)),
                ),
                Divider(),
                ListTile(
                  leading: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11),
                      color: Colors.indigo.shade900,

                    ),
                    height: 100,width: 160,
                    child: TextButton(onPressed: (){

                    },child: Text(' Buy',style: TextStyle(color: Colors.white,fontSize: 15)),
                    ),
                  ),
                  title: SizedBox(width: 10,),
                  trailing: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11),
                      color: Colors.indigo.shade900,

                    ),
                    height: 100,width: 165,
                    child: TextButton(onPressed: (){

                    },child: Text(' Sell',style: TextStyle(color: Colors.white,fontSize: 15)),
                    ),
                  ),

                )
              ],
            ),

            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top:13),
                  child: ListTile(
                    title: Text('Recent News',style: TextStyle(fontSize: 20,letterSpacing: 0.6,)),

                  ),
                ),

                Divider(indent: 25,
                  endIndent: 25,
                  thickness: 0.5,
                ),
                ListTile(
                  title: Text('Why the worst may already be over for the global economy.',),
                  subtitle: Text('Bloomburg . 9 hours ago',style: TextStyle(color: Colors.grey),),
                ),
                Divider(indent: 25,
                  endIndent: 25,
                  thickness: 0.5,),
                ListTile(
                  title: Text('Boeing ended the week worth 25000 billion less than it started',),
                  subtitle: Text('Quartz. one day ago',style: TextStyle(color: Colors.grey),),
                ),
                Divider(indent: 25,
                  endIndent: 25,
                  thickness: 0.5,),
                ListTile(
                  title: Text('Better economic dat needed before wall street can rise back to alltime hi...',),
                  subtitle: Text('CNBC. 3 days ago',style: TextStyle(color: Colors.grey),),
                ),
                Divider(indent: 25,
                  endIndent: 25,
                  thickness: 0.5,),
                ListTile(
                  title: Text('Apple Watch detects irregular heart beat in large U>S Study ',),
                  subtitle: Text('Reuters.3 days ago',style: TextStyle(color: Colors.grey),),
                ),
                Divider(indent: 25,
                  endIndent: 25,
                  thickness: 0.5,),
                ListTile(
                  title: Text('Trump urges General Motors to reopen Ohio plant in tweet ',),
                  subtitle: Text('Reuters.12 days ago',style: TextStyle(color: Colors.grey),),
                ),
                Divider(indent: 25,
                  endIndent: 25,
                  thickness: 0.5,),
                ListTile(
                  title: Text('Why the worst may already  be over for the global economy  ',),
                  subtitle: Text('Bloomberg.12 days ago',style: TextStyle(color: Colors.grey),),
                ),
              ],
            ),



          ]


      ),
    );
  }
}
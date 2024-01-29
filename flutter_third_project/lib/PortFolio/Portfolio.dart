import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_third_project/Expenses/TOPCATEGOries.dart';
import 'package:flutter_third_project/PortFolio/twitter.dart';

class PortFolio extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return PortFolioState();
  }

}

class PortFolioState extends State<PortFolio>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        backgroundColor:  Colors.blue,
        title: Text('Portfolio',style: TextStyle(color: Colors.white),),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          color: Colors.white,
          child: ListView(
            children: [
              Container(
                height: 300,width: 300,
                child:PieChart(


                    PieChartData(

                        centerSpaceRadius: 70,

                        sections: [
                          PieChartSectionData(
                            radius: 50,

                              title:'30%\nEstate',
                              value: 30,
                              color: Colors.green
                          ),
                          PieChartSectionData(
                              radius: 50,


                              title:'10%\ncash',
                              value: 10,
                              color: Colors.yellow
                          ),
                          PieChartSectionData(
                              radius: 50,


                              title:'18%\nGold',
                              value: 18,
                              color: Colors.orange
                          ),
                          PieChartSectionData(
                              radius: 50,


                              title:'25%\nstock',

                              value: 25,
                              color: Colors.pinkAccent
                          ),
                          PieChartSectionData(
                              radius: 50,


                              title:'19%\ncrypto',
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
                  title:Text('Stocks',style: TextStyle(fontSize: 20,letterSpacing: 0.6,)),
                ),

              ),
              Divider(
                thickness: 0.5,
              ),
              ListTile(
                onTap: (){

                },
                leading:Image.network('data:image/png;base64,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'),
                title: Text("Twitter",style: TextStyle(fontSize: 16,color: Colors.black,),),
                subtitle: Text('TWTR',style: TextStyle(fontSize: 12,color: Colors.grey),),
                trailing: ElevatedButton(
                    style:ElevatedButton.styleFrom(
                      //side: BorderSide(color: Colors.white,width: 2),
                      backgroundColor:Colors.red[30],
                    ),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>TwitterPage(),),);

                    },child:Text("0.25%",style: TextStyle(color: Colors.red),),

                ),),
              Divider(
                thickness: 0.5,
              ),
              ListTile(
                onTap: (){

                },
                leading: Icon(Icons.facebook_rounded,color:Colors.indigo,size: 50,),
                title: Text("Facebook",style: TextStyle(fontSize: 16,color: Colors.black,),),
                subtitle: Text('FB',style: TextStyle(fontSize: 12,color: Colors.grey),),
                trailing: ElevatedButton(
                  style:ElevatedButton.styleFrom(
                    //side: BorderSide(color: Colors.white,width: 2),
                    backgroundColor:Colors.green[30],
                  ),
                  onPressed: () {
                    // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Welcome(),),);

                  },child:Text("2.4%",style: TextStyle(color: Colors.green),),

                ),),
              Divider(
                thickness: 0.5,
              ),
              ListTile(
                onTap: (){

                },
                leading:Image.network("data:image/jpeg;base64,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"),
                title: Text("Netflix",style: TextStyle(fontSize: 16,color: Colors.black,),),
                subtitle: Text('NFLX',style: TextStyle(fontSize: 12,color: Colors.grey),),
                trailing: ElevatedButton(
                  style:ElevatedButton.styleFrom(
                    //side: BorderSide(color: Colors.white,width: 2),
                    backgroundColor:Colors.red[30],
                  ),
                  onPressed: () {
                    // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Welcome(),),);

                  },child:Text("1.41%",style: TextStyle(color: Colors.red),),

                ),),
              Divider(
                thickness: 0.5,
              ),
              ListTile(
                onTap: (){

                },
                leading: Image.network('data:image/png;base64,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'),
                title: Text("Google",style: TextStyle(fontSize: 16,color: Colors.black,),),
                subtitle: Text('GOOG',style: TextStyle(fontSize: 12,color: Colors.grey),),
                trailing: ElevatedButton(
                  style:ElevatedButton.styleFrom(
                    //side: BorderSide(color: Colors.white,width: 2),
                    backgroundColor:Colors.green[30],
                  ),
                  onPressed: () {
                    // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Welcome(),),);

                  },child:Text("0.75%",style: TextStyle(color: Colors.green),),

                ),),
              Divider(
                thickness: 0.5,
              ),
              ListTile(
                onTap: (){

                },
                leading: Image.network('data:image/png;base64,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'),
                title: Text("Amazon",style: TextStyle(fontSize: 16,color: Colors.black,),),
                subtitle: Text('AMZN',style: TextStyle(fontSize: 12,color: Colors.grey),),
                trailing: ElevatedButton(
                  style:ElevatedButton.styleFrom(
                    //side: BorderSide(color: Colors.white,width: 2),
                    backgroundColor:Colors.green[30],
                  ),
                  onPressed: () {
                    // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Welcome(),),);

                  },child:Text("0.25%",style: TextStyle(color: Colors.green),),

                ),),
              Divider(
                thickness: 0.5,
              ),

              ListTile(
                onTap: (){
                //  Navigator.of(context).push(MaterialPageRoute(builder:( context)=>TopCategories()));

                },
                title: Text('View All Stocks',style: TextStyle(fontSize: 17,),),
                trailing: Icon(Icons.arrow_forward_ios_outlined,color: Colors.black26,),
              ),
              Divider(
                height: 20,thickness: 20,
                color: Colors.black12,
              ),
              Padding(
                padding: const EdgeInsets.only(top:10),
                child: ListTile(
                  title:Text('Cryptocurrencies',style: TextStyle(fontSize: 20,letterSpacing: 0.6,)),
                ),

              ),
              Divider(
                thickness: 0.5,
              ),
              ListTile(
                onTap: (){

                },
                leading: Image.network('data:image/png;base64,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'),
                title: Text("Bitcoin",style: TextStyle(fontSize: 16,color: Colors.black,),),
                subtitle: Text('BTC',style: TextStyle(fontSize: 12,color: Colors.grey),),
                trailing: ElevatedButton(
                  style:ElevatedButton.styleFrom(
                    //side: BorderSide(color: Colors.white,width: 2),
                    backgroundColor:Colors.green[30],
                  ),
                  onPressed: () {
                    // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Welcome(),),);

                  },child:Text("5.25%",style: TextStyle(color: Colors.green),),

                ),),
              Divider(
                thickness: 0.5,
              ),
              ListTile(
                onTap: (){

                },
                leading: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSrxd8negoZbq4SWW4sl6saYIajdDaXV_2Qsg&usqp=CAU'),
                title: Text("Ethereum",style: TextStyle(fontSize: 16,color: Colors.black,),),
                subtitle: Text('ETH',style: TextStyle(fontSize: 12,color: Colors.grey),),
                trailing: ElevatedButton(
                  style:ElevatedButton.styleFrom(
                    //side: BorderSide(color: Colors.white,width: 2),
                    backgroundColor:Colors.green[30],
                  ),
                  onPressed: () {
                    // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Welcome(),),);

                  },child:Text("2.65%",style: TextStyle(color: Colors.green),),

                ),),
              Divider(
                thickness: 0.5,
              ),
              ListTile(
                onTap: (){

                },
                leading: Image.network('data:image/png;base64,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'),
                title: Text("Litecoin",style: TextStyle(fontSize: 16,color: Colors.black,),),
                subtitle: Text('LTC',style: TextStyle(fontSize: 12,color: Colors.grey),),
                trailing: ElevatedButton(
                  style:ElevatedButton.styleFrom(
                    //side: BorderSide(color: Colors.white,width: 2),
                    backgroundColor:Colors.green[30],
                  ),
                  onPressed: () {
                    // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Welcome(),),);

                  },child:Text("7.41%",style: TextStyle(color: Colors.green),),

                ),),
              Divider(
                thickness: 0.5,
              ),
              ListTile(
                onTap: (){

                },
                leading: Image.network('data:image/png;base64,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'),
                title: Text("Bitcoin Cash",style: TextStyle(fontSize: 16,color: Colors.black,),),
                subtitle: Text('BCH',style: TextStyle(fontSize: 12,color: Colors.grey),),
                trailing: ElevatedButton(
                  style:ElevatedButton.styleFrom(
                    //side: BorderSide(color: Colors.white,width: 2),
                    backgroundColor:Colors.green[30],
                  ),
                  onPressed: () {
                    // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Welcome(),),);

                  },child:Text("8.41%",style: TextStyle(color: Colors.green),),

                ),),
              Divider(
                thickness: 0.5,
              ),
              ListTile(
                onTap: (){
                  //  Navigator.of(context).push(MaterialPageRoute(builder:( context)=>TopCategories()));

                },
                title: Text('View All Cryptocurrencies',style: TextStyle(fontSize: 17,),),
                trailing: Icon(Icons.arrow_forward_ios_outlined,color: Colors.black26,),
              ),
              Divider(
                height: 20,thickness: 20,
                color: Colors.black12,
              ),
              Padding(
                padding: const EdgeInsets.only(top:10),
                child: ListTile(
                  title:Text('Top Stories',style: TextStyle(fontSize: 20,letterSpacing: 0.6,)),
                ),

              ),
              Divider(
                thickness: 0.5,
              ),
              ListTile(
                title: Text('Why the worst may already be over for the global economy.',),
                subtitle: Text('Bloomburg . 9 hours ago',style: TextStyle(color: Colors.grey),),
              ),
              Divider(
                thickness: 0.5,),
              ListTile(
                title: Text('Boeing ended the week worth 25000 billion less than it started',),
                subtitle: Text('Quartz. one day ago',style: TextStyle(color: Colors.grey),),
              ),
              Divider(
                thickness: 0.5,),
              ListTile(
                title: Text('Better economic dat needed before wall street can rise back to alltime hi...',),
                subtitle: Text('CNBC. 3 days ago',style: TextStyle(color: Colors.grey),),
              ),
              Divider(
                thickness: 0.5,),
              ListTile(
                title: Text('Apple Watch detects irregular heart beat in large U>S Study ',),
                subtitle: Text('Reuters.3 days ago',style: TextStyle(color: Colors.grey),),
              ),
              Divider(
                thickness: 0.5,),
              ListTile(
                title: Text('Trump urges General Motors to reopen Ohio plant in tweet ',),
                subtitle: Text('Reuters.12 days ago',style: TextStyle(color: Colors.grey),),
              ),
              Divider(
                thickness: 0.5,),
              ListTile(
                title: Text('Why the worst may already  be over for the global economy  ',),
                subtitle: Text('Bloomberg.12 days ago',style: TextStyle(color: Colors.grey),),
              ),



            ],
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewsPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return NewsPageState();
  }

}

class NewsPageState extends State<NewsPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('News',style: TextStyle(color: Colors.white),),
        centerTitle: true,
      ),
      body: ListView(
        children: const [
          ListTile(
            title:Text('Why the worst may already be over for the global economy.') ,
            subtitle: Text('Bloomberg. 9 hours ago',style: TextStyle(color: Colors.grey),),
          ),
          Divider(
            thickness: 0.5,),
          ListTile(
            title: Text('Boeing ended the week worth 25000 billion less then it started',),
            subtitle: Text('Quartz. one day ago',style: TextStyle(color: Colors.grey),),
          ),
          Divider(thickness: 0.5,),
          ListTile(
            title: Text('Better economy data needed before wall street can rise back to alltime hi...'),
            subtitle: Text('CNBC. 3 days ago',style: TextStyle(color: Colors.grey),),
          ),
          Divider(thickness: 0.5,),
          ListTile(
            title: Text('Apple watch detects irregular heart beat in large U.S study'),
            subtitle: Text('Reuters.12 days ago',style: TextStyle(color: Colors.grey),),
          ),
          Divider(thickness: 0.5,),
          ListTile(
            title: Text('Trump urges General Motors to reopen Ohio Plant in tweet ',),
            subtitle: Text('Reuters.12 days ago',style: TextStyle(color: Colors.grey),),
          ),
          Divider(thickness: 0.5,),
          ListTile(
            title: Text('Why the worst may already be over for the global economy ',),
            subtitle: Text('Bloomberg.12 days ago',style: TextStyle(color: Colors.grey),),
          ),
        ],
      ),
    );
  }
}
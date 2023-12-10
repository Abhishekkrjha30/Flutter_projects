import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      backgroundColor: Colors.white54,
      appBar: AppBar(

        actions: [
          //  Center(child:Text("appbar")),

          Center(child: Icon(Icons.account_circle,size: 40,color: Colors.purpleAccent,)),
        ],
      ),
      drawer: Drawer(),

      body:Container(

        child: SingleChildScrollView(
          child: Column(

            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(20.0),
                child: RichText(
                  text: TextSpan(
                      children: [
                        TextSpan(text: "Hello,",style: TextStyle(fontSize: 30,fontWeight: FontWeight.normal)),
                        TextSpan(text: "Sriram!",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold)),
                        TextSpan(text: "\nHave a nice day!",style: TextStyle(fontSize: 20,color: Colors.grey) ),
                      ]
                  ),

                ),
              ),
              Container(
                width: 300,
                padding: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("My Tasks",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,backgroundColor: Colors.white),),
                    Text("Project",style: TextStyle(fontSize: 15,color: Colors.grey),),
                    Text("Pendings",style: TextStyle(fontSize: 15,color: Colors.grey),),
                  ],
                ),
              ),
              Container(
                child: Row(
                  children: [
                    Container(
                      height: 250,
                      width: 200,
                      margin: EdgeInsets.only(left: 20,top: 5),
                      padding: EdgeInsets.only(left: 10,top: 20),
                      decoration: BoxDecoration(
                        color: Colors.purpleAccent,borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            children: [

                              Icon(Icons.account_box,size: 40,),
                              Text("project",style: TextStyle(fontSize: 20,fontWeight: FontWeight.normal),)

                            ],
                          ),
                          Text("Backend\nDevelopment",
                            style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black54),),
                          Text("Apr3",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black54),),
                        ],
                      ),
                    ),
                    Container(
                      height: 250,
                      width: 200,
                      margin: EdgeInsets.only(left: 20,top: 5),
                      padding: EdgeInsets.only(left: 10,top: 20),
                      decoration: BoxDecoration(
                        color: Colors.purpleAccent,borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            children: [

                              Icon(Icons.account_box,size: 40,),
                              Text("project",style: TextStyle(fontSize: 20,fontWeight: FontWeight.normal),)

                            ],
                          ),
                          Text("Backend\nDevelopment",
                            style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black54),),
                          Text("Apr3",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black54),),
                        ],
                      ),
                    ),
                    Container(
                      height: 250,
                      width: 200,
                      margin: EdgeInsets.only(left: 20,top: 5),
                      padding: EdgeInsets.only(left: 10,top: 20),
                      decoration: BoxDecoration(
                        color: Colors.purpleAccent,borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            children: [

                              Icon(Icons.account_box,size: 40,),
                              Text("project",style: TextStyle(fontSize: 20,fontWeight: FontWeight.normal),)

                            ],
                          ),
                          Text("Backend\nDevelopment",
                            style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black54),),
                          Text("Apr3",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black54),),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(

                margin: EdgeInsets.only(top: 30,left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(child: Text("Progress",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),

                    SizedBox(height: 20,),
                    Container(
                      padding: EdgeInsets.only(top: 20,left: 20),
                      height: 70,
                      width: 500,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(12)
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.receipt,size:50 ,),
                          Column(
                            children: [
                              Text("Project",style: TextStyle(fontSize: 20),),
                              Text("2 days ago",style: TextStyle(fontSize: 10),),

                            ],
                          ),
                          SizedBox(width: 300,),
                          Icon(Icons.menu,size: 50,),
                          //          Icon(Icons.)
                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      padding: EdgeInsets.only(top: 20,left: 20),
                      height: 70,
                      width: 500,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(12)
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.receipt,size:50 ,),
                          Column(
                            children: [
                              Text("Project",style: TextStyle(fontSize: 20),),
                              Text("2 days ago",style: TextStyle(fontSize: 10),),

                            ],
                          ),
                          SizedBox(width: 300,),
                          Icon(Icons.menu,size: 50,),
                          //          Icon(Icons.)
                        ],
                      ),
                    )

                  ],
                ),
              )


            ],

          ),
        ),
      ),

    );
  }
}


import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_service_project/ServiceDetails/ApplianceDetails.dart';
import 'package:home_service_project/ServiceDetails/Car&BikeDetails.dart';
import 'package:home_service_project/ServiceDetails/CarpentersDetails.dart';
import 'package:home_service_project/ServiceDetails/ComputerRepairDetails.dart';
import 'package:home_service_project/ServiceDetails/ElectriciansDetails.dart';
import 'package:home_service_project/ServiceDetails/InteriorDetails.dart';
import 'package:home_service_project/ServiceDetails/Movers&Packers.dart';
import 'package:home_service_project/ServiceDetails/PujaPathDetails.dart';
import 'package:home_service_project/ServiceDetails/PlumberDetails.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final textfield=TextEditingController();

  final urlImages=[
'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS9LpcLXdUxQ1SHOwtNKJbVXDWs2D7wncGu2Q&usqp=CAU',
'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1ZDhdBTUu2BPoHV8swv8RHzndXGspnvozHA&usqp=CAU',
    'https://i0.wp.com/stanzaliving.wpcomstaging.com/wp-content/uploads/2022/04/8c40d-packers-and-movers-bangalore.jpg?fit=1000%2C667&ssl=1',
'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTcEJsmoohdnJhXOJeiLIG9pu3Q0Mc9jvMxqg&usqp=CAU',
'https://images.ctfassets.net/z031v9hsq077/3LuvdLVCufz14zVfPhLo76/ddad007939f977b95c8591b97eaa32fa/faucet_replacement_hub_desktop.jpg?fm=webp&w=460&q=80',
'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRP4tMS4xSNQkb_HNB6QfKfXZ5VkaNiyDTuAQ&usqp=CAU',
    'data:image/jpeg;base64,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',
'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQcAQclWRMLzwQmrmVLIvCGZBLIRgGEJ1l83Q&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQve45omkjIZsY9VxpriyAnj-7ZpHcAORyIcUZwapqkWfxgnrPgcI_yH3AT1lAlA2dCEYs&usqp=CAU',
  ];
  final titles=[
    'Puja-Path','Electrician','Packers & Movers',
    'Carpenter','Plumbing','Desktop & Laptop Repair',
    'Appliance Repair','Interior','Car & Bikes Wash'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ListTile(
            title: Text('Today',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            subtitle: Text('Hey,How can I Help You?',style: TextStyle(fontSize:16,)),
            trailing: IconButton(onPressed: (){}, icon:Icon(Icons.notifications,size: 28,color: Colors.blue.shade900,)),


          ),
          Padding(
            padding: const EdgeInsets.all(14),
            child: searchBox(),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text("What you are looking for today",
            style:GoogleFonts.ptSansCaption(
              textStyle:TextStyle(letterSpacing: 0.5,fontWeight: FontWeight.bold,fontSize:30,color: Colors.blue.shade900),

            )
            ),
          ),
         // SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.grey.shade200
              ),
                child:CarouselSlider.builder(
                    itemCount: urlImages.length, options: CarouselOptions(
    // height: 300,
    viewportFraction: 1,
    enlargeCenterPage: true,
    autoPlay: true,

    ),
                    itemBuilder: (context,index,realindex){
                      final urlImage=urlImages[index];
                      final title=titles[index];
                      return buildImage(urlImage, index, title);
                    }),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              height: 490,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.grey.shade200,

              ),
              child: ListView(
                children: [
              SizedBox(height:30,),
              Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      TextButton(
                        onPressed: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>PujaPathDetails()));
                      },
                          child:service(
   'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS9LpcLXdUxQ1SHOwtNKJbVXDWs2D7wncGu2Q&usqp=CAU',
                              'Puja-Path'),
                      ),
                      TextButton(
                        onPressed: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ElectriciansDetails()));
                      },
                          child:service(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1ZDhdBTUu2BPoHV8swv8RHzndXGspnvozHA&usqp=CAU',
                              'Electrician'),

                      ),
                      TextButton(onPressed: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>MoversPackersDetails()));

                      },
                        child:service(
                            'https://i0.wp.com/stanzaliving.wpcomstaging.com/wp-content/uploads/2022/04/8c40d-packers-and-movers-bangalore.jpg?fit=1000%2C667&ssl=1'
                             ,'Packers &\n   Movers'),

                      ),
                    ],
                  ),
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextButton(onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>CarpentersDetails()));

                  },
                      child:service(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTcEJsmoohdnJhXOJeiLIG9pu3Q0Mc9jvMxqg&usqp=CAU',
                          'Carpenter'),

                  ),
                  TextButton(
                    onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>PlumberDetails()));

                  },
                    child:service(
                        'https://images.ctfassets.net/z031v9hsq077/3LuvdLVCufz14zVfPhLo76/ddad007939f977b95c8591b97eaa32fa/faucet_replacement_hub_desktop.jpg?fm=webp&w=460&q=80',
                         'Plumber'),

                  ),
                  TextButton(
                    onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ComputerRepairDetails()));
                  },
                      child:service(
'data:image/png;base64,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'
                         , 'Computer\n   Repair'),

                  ),
                ],
              ),
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextButton(onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ApplianceDetails()));
                  },
                    child:service(
                        'data:image/jpeg;base64,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'
                        , 'Appliance\n  Repair'),

                  ),
                  TextButton(onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>InteriorDetails()));

                  },
                    child:service(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQcAQclWRMLzwQmrmVLIvCGZBLIRgGEJ1l83Q&usqp=CAU',
                         'Interior'),

                  ),
                  TextButton(onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>CarBikeWashDetails()));

                  },
                      child:service(
'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQve45omkjIZsY9VxpriyAnj-7ZpHcAORyIcUZwapqkWfxgnrPgcI_yH3AT1lAlA2dCEYs&usqp=CAU'
                         , 'Car & Bikes\n    Wash'),

                  ),
                ],
              ),
                  SizedBox(height: 30,),
                ],
      ),
            ),
          ),
        ],
      ),
    );
  }
  Widget service(String url,String title){
    return Column(
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(url),
          radius: 30,
        ),
        SizedBox(height: 8,),
        Text(title,
          style: TextStyle(fontSize: 18,fontWeight: FontWeight.w800,color:Colors.black,),
        ),
      ],
    );
  }
  Widget buildImage(String urlImage, int index,String title) {
    return Padding(
      padding: const EdgeInsets.all(2),
      child: Stack(
        children: [
          Container(
            height: 250,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12)
            ),
            margin: EdgeInsets.symmetric(horizontal: 2),
            child:
            Image.network(urlImage,fit: BoxFit.fill,),
          ),
          Container(
              color: Colors.black45,
              height: 250,
              width: double.infinity,
              child:Center(child: Text(title,style: TextStyle(color: Colors.white,letterSpacing: 0.5,fontSize: 20,fontWeight: FontWeight.bold),)),
          )



        ],
      ),
    );
  }
  Widget searchBox(){
    return Container(
      decoration: BoxDecoration(
        border: Border.all(width: 0.8,color: Colors.grey.shade400),
        borderRadius: BorderRadius.circular(10),
      ),
      height: 52,
      child: TextFormField(
        controller: textfield,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: Colors.grey,width:0.8,
            )
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
              color: Colors.grey,width:0.8
            )
          ),
          prefixIcon: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Icon(Icons.search,color: Colors.grey,size: 32,),
          ),
          suffixIcon: Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(onPressed: (){
              clearText();

            },
              icon:Icon(Icons.cancel_outlined,size: 32,color: Colors.grey.shade400,),
            )

          ),
          hintText: '   Search',
          hintStyle:TextStyle(fontSize: 20,fontWeight: FontWeight.w500,letterSpacing: 0.6,color: Colors.grey),
        ),

      ),
    );
  }

  void clearText() {
    textfield.clear();
  }

}
/*
SearchBar(

        controller: textfield,
        backgroundColor:MaterialStateProperty.all(
          Colors.white,
        ),
        leading: Icon(Icons.search,color: Colors.black38,),
        side: MaterialStateProperty.all(const BorderSide(color:Colors.white24)),
        hintText: 'Search',
        hintStyle: MaterialStateProperty.all(TextStyle(color:Colors.black38,fontWeight:FontWeight.bold,fontSize: 18)),
        trailing:[
          IconButton(onPressed: (){
            clearText();
            // Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>SearchBarPage()));
          }, icon:Icon(Icons.clear,color: Colors.black38,))
        ]

    );


 Widget buildImage(String urlImage, int index,String text) {
    return Stack(
      children: [
        Container(
         // height: 250,
         width: double.infinity,

         margin: EdgeInsets.symmetric(horizontal: 2),
          child:
              Image.network(urlImage,fit: BoxFit.fitWidth,),
        ),
        Container(
          color: Colors.black45,
          //height: 245,
          width: double.infinity,
          child:Center(child: Text(text,style: TextStyle(color: Colors.white,fontSize: 18),))),


      ],
    );
  }
  Stack(
  children: [
  Container(
  child: CarouselSlider.builder(
  itemCount: urlImages.length,
  itemBuilder: (context,index,realIndex){
  final urlImage=urlImages[index];
  final text=texts[index];
  return buildImage(urlImage,index,text);

  },
  options: CarouselOptions(
  // height: 300,
  viewportFraction: 1,
  enlargeCenterPage: true,
  autoPlay: true,
  autoPlayInterval: Duration(seconds: 3),
  onPageChanged: (index,reason)=>
  setState(()=>activeIndex=index)
  )),
  ),
  Padding(
  padding: const EdgeInsets.only(top:190.0),
  child: Center(
  child:            buildIndicator(),

  ),
  ),
  ],
  ),

 */
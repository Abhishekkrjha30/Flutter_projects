import 'package:flutter/material.dart';
import 'package:flutter_third_project/intropage/intropage1.dart';
import 'package:flutter_third_project/intropage/intropage2.dart';
import 'package:flutter_third_project/intropage/intropage3.dart';
import 'package:flutter_third_project/main.dart';
import 'package:flutter_third_project/Welcome.login.signup/welcome.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'intropage4.dart';
import 'intropage5.dart';
import 'intropage6.dart';
import 'intropage7.dart';
import 'intropage8.dart';

class Introduction extends StatefulWidget{

   const Introduction({Key?key,}):super(key:key);
  @override
  State<StatefulWidget> createState() {
     return IntroductionState();
  }

}

class IntroductionState extends State<Introduction>{
  bool i=false;

  PageController controller=PageController();

  @override
  Widget build(BuildContext context) {
      return Scaffold(

        body: Stack(
          children: [
            PageView(
              controller: controller,
              onPageChanged: (index){
                setState(() {
                  if(index==7)
                    i=true;
                  else
                    i=false;
                });
              },
              children: [
                Intropage1(),
                Intropage2(),
                Intropage3(),
                Intropage4(),
                Intropage5(),
                Intropage6(),
                Intropage7(),
                Intropage8(),

              ],
            ),
            Container(
                alignment: Alignment(0,0.78),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [

                    GestureDetector(
                      onTap:(){
                        controller.jumpToPage(7);

            },child: Text('skip',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)),

                    SmoothPageIndicator(
                        controller: controller, count: 8,
                      effect: SlideEffect(
                        activeDotColor: Colors.white,
                        spacing: 5,
                        dotWidth: 12,
                        dotHeight: 12,
                      ),
                      onDotClicked: (index){
                          controller.animateToPage(index, duration: Duration(milliseconds: 500), curve:Curves.easeIn);
                    }
                    ),

                    i
                      ?ElevatedButton(
                      style:ElevatedButton.styleFrom(
                        side: BorderSide(color: Colors.white,width: 2),
                        backgroundColor:Colors.blue,
                      ),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Welcome(),),);

                        },
                        child: Text('Continue', style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,fontSize: 15),))

                   : GestureDetector(
                          onTap: () {
                            controller.nextPage(
                                duration: Duration(milliseconds: 500),
                                curve: Curves.easeIn);
                          },
                          child: Text('next', style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white),)),

                  ],
                ))
          ],
        )
      );
     }

}


import 'package:flutter/material.dart';
import 'package:food_delivery/SignUpLogIn/WelcomePage.dart';
import 'package:food_delivery/WelCome/IntroPage1.dart';
import 'package:food_delivery/WelCome/IntroPage2.dart';
import 'package:food_delivery/WelCome/IntroPage3.dart';
import 'package:food_delivery/WelCome/IntroPage4.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


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
                  if(index==3)
                    i=true;
                  else
                    i=false;
                });
              },
              children: [
                IntroPage1(),
                IntroPage2(),
                IntroPage3(),
                IntroPage4(),

              ],
            ),
            Container(
                alignment: Alignment(0,0.78),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [

                    GestureDetector(
                        onTap:(){
                          controller.jumpToPage(3);

                        },child: Text('skip',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)),

                    SmoothPageIndicator(
                        controller: controller, count: 4,
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
                          backgroundColor:Colors.green,
                        ),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>WelcomePage(),),);

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


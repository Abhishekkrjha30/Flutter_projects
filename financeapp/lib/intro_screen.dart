import 'package:financeapp/intro/IntroPage1.dart';
import 'package:financeapp/intro/IntroPage3.dart';
import 'package:financeapp/intro/IntroPage4.dart';
import 'package:financeapp/intro/IntroPage5.dart';
import 'package:financeapp/intro/IntroPage6.dart';
import 'package:financeapp/intro/IntroPage7.dart';
import 'package:financeapp/intro/IntroPage8.dart';
import 'package:financeapp/intro/WelcomePage.dart';
import 'package:financeapp/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'intro/IntroPage2.dart';

class IntroductionPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return IntroductionPageState();
  }

}

class IntroductionPageState  extends State<IntroductionPage>{

  PageController _controller = PageController();

  bool onLastPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index){
              setState(() {
                onLastPage = (index == 7);
              });
            },
            children: [
              IntroPage1(),
              IntroPage2(),
              IntroPage3(),
              IntroPage4(),
              IntroPage5(),
              IntroPage6(),
              IntroPage7(),
              IntroPage8(),

            ],
          ),
          Container(
            alignment: Alignment(0,0.75),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                   onTap:(){
                     _controller.jumpToPage(7);
          },
                      child: Text('Skip',style: TextStyle(color: Colors.white),),
    ),

                  SmoothPageIndicator(controller: _controller, count: 8,
                    effect: SlideEffect(
                      activeDotColor: Colors.white,
                      spacing: 5,
                      dotWidth: 12,
                      dotHeight: 12,
                    ),
                      onDotClicked: (index){
                        _controller.animateToPage(index, duration: Duration(milliseconds: 500), curve:Curves.easeIn);
                      }
                  ),
                  onLastPage
                  ?ElevatedButton(
                    style:ElevatedButton.styleFrom(
                      side: BorderSide(color: Colors.white,width: 2),
                      backgroundColor:Colors.blue,
                    ),
                      onPressed:(){
                        Navigator.push(context,MaterialPageRoute(builder: (context){
                          return WelcomePage();
                        }

                        ) );
                      },
                      child: Text('Continue',style: TextStyle(color: Colors.white),),
                  )

                 : GestureDetector(
                      onTap:(){
                        _controller.nextPage(duration: Duration(milliseconds: 500),
                          curve: Curves.easeIn,
                        );
                      },
                      child: Text('Next',style: TextStyle(color: Colors.white),)),
                ],
              )),
        ],
      ),
    );


  }
}

/*ElevatedButton(
                      style:ElevatedButton.styleFrom(
                        side: BorderSide(color: Colors.grey,width: 2),
                        backgroundColor:Colors.blue,
                      ),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Welcome(),),);

                        },
                        child: Text('Continue', style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,fontSize: 15),))

 */

/*effect: SlideEffect(
                        activeDotColor: Colors.white,
                        spacing: 5,
                        dotWidth: 12,
                        dotHeight: 12,
                      ),

 */
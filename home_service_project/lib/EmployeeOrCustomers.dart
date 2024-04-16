import 'package:flutter/material.dart';
import 'package:home_service_project/SplashWelcomeLoginSignUp/WelcomePage.dart';

class EmployeeOrCustomers extends StatelessWidget {
  const EmployeeOrCustomers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Container(
            height: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    image: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmf5wMpXQETBNX7sD1Zz778aBPgYB5gt_Uhg&usqp=CAU',
                    )
                )
            ),
          ),
          SizedBox(height: 20,),

          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              height: 48,width: double.infinity,
              decoration: BoxDecoration(
                // borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Colors.blue.shade900,
              ),
              child: TextButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>WelcomePage(),),);
              }, child:Text("Customer",style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold),) ),
            ),
          ),
          SizedBox(height: 6,),
          Text('OR',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
          SizedBox(height: 6,),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              height: 48,width: double.infinity,
              decoration: BoxDecoration(
                // borderRadius: BorderRadius.all(Radius.circular(20)),
                border: Border.all(color: Colors.blue.shade900),
              ),
              child: TextButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>WelcomePage(),),);
              }, child:Text("Employee",style: TextStyle(fontSize: 18,color: Colors.blue.shade900,fontWeight: FontWeight.bold),) ),
            ),
          ),

        ],
      ),
    );
  }
}

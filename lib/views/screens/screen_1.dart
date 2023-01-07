import 'package:flutter/material.dart';
import 'package:intro_screen/views/screens/Homepage.dart';
import 'package:intro_screen/views/screens/screen_2.dart';

class screen_1 extends StatefulWidget {
  const screen_1({Key? key}) : super(key: key);

  @override
  State<screen_1> createState() => _screen_1State();
}

class _screen_1State extends State<screen_1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 150,),
          Image.asset("assets/images/image.png"),
          SizedBox(height: 20,),
          Text("Search How-To's, Help Videos,and ",style: TextStyle(color: Colors.grey.shade400,fontSize: 20,fontWeight: FontWeight.w500),),
          SizedBox(height: 7,),
          Text("Solutions to quickly troubleshoot and",style: TextStyle(color: Colors.grey.shade400,fontSize: 20,fontWeight: FontWeight.w500),),
          SizedBox(height: 7,),
          Text( " enhance performance.",style: TextStyle(color: Colors.grey.shade400,fontSize: 20,fontWeight: FontWeight.w500),),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
              onTap: (){
                    setState((){
                      Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => const screen_2()));
                    });
                  },
                  child: Text("Skip",style: TextStyle(color: Colors.blue.shade500,fontSize: 15,fontWeight: FontWeight.w600),)),
              Container(
                height: 20,
                width: 80,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 8,
                      width: 8,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.lightBlue,
                      ),
                    ),
                    Container(
                      height: 8,
                      width: 8,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.lightBlue.shade100
                      ),
                    ),
                    Container(
                      height: 8,
                      width: 8,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.lightBlue.shade100
                      ),
                    ),
                    Container(
                      height: 8,
                      width: 8,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.lightBlue.shade100
                      ),
                    ),
                  ],
                ),
              ),
              InkWell(
                  onTap: (){
                    setState((){
                      Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => const screen_2()));
                    });
                  },
                  child: Container(
                      alignment: Alignment.center,
                      height: 33,
                      width: 60,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(5)
                      ),
                      child: Text("Next",style: TextStyle(color: Colors.white,fontSize: 13),))),
            ],
          ),
          SizedBox(height: 30,),
        ],
      ),
      backgroundColor: Colors.white,
    );
  }
}

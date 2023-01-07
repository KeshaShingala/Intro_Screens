import 'package:flutter/material.dart';
import 'package:intro_screen/views/screens/Homepage.dart';
import 'package:intro_screen/views/screens/screen_4.dart';


class screen_3 extends StatefulWidget {
  const screen_3({Key? key}) : super(key: key);

  @override
  State<screen_3> createState() => _screen_3State();
}

class _screen_3State extends State<screen_3> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          SizedBox(height: 130,),
          Image.asset("assets/images/image3.png",height: 400,width: 400,),
          Text(" Check out our deals on Lenovo ",style: TextStyle(color: Colors.grey.shade400,fontSize: 20,fontWeight: FontWeight.w500),),
          SizedBox(height: 7,),
          Text(" Products in the 'Shop' section.",style: TextStyle(color: Colors.grey.shade400,fontSize: 20,fontWeight: FontWeight.w500),),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                  onTap: (){
                    setState((){
                      Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => const screen_4()));
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
                        color: Colors.lightBlue.shade100,
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
                          color: Colors.lightBlue
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
                      Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => const screen_4()));
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
                      child: Text("Next",style: TextStyle(color: Colors.white,fontSize: 13,),))),
            ],
          ),
          SizedBox(height: 30,),
        ],
      ),
      backgroundColor: Colors.white,
    );
  }
}


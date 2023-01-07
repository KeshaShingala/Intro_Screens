import 'package:flutter/material.dart';
import 'package:intro_screen/views/screens/Homepage.dart';


class screen_4 extends StatefulWidget {
  const screen_4({Key? key}) : super(key: key);

  @override
  State<screen_4> createState() => _screen_4State();
}

class _screen_4State extends State<screen_4> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          SizedBox(height: 160,),
          Image.asset("assets/images/image4.png",height: 300,width: 300,),
          SizedBox(height: 50,),
          Text("Check out your Lenovo products and",style: TextStyle(color: Colors.grey.shade400,fontSize: 20,fontWeight: FontWeight.w500),),
          SizedBox(height: 7,),
          Text("how to optimize them by accessing",style: TextStyle(color: Colors.grey.shade400,fontSize: 20,fontWeight: FontWeight.w500),),
          SizedBox(height: 7,),
          Text( " Product Manuals.",style: TextStyle(color: Colors.grey.shade400,fontSize: 20,fontWeight: FontWeight.w500),),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                  onTap: (){
                    setState((){
                      Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => const HomePage()));
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
                  ],
                ),
              ),
              InkWell(
                  onTap: (){
                    setState((){
                      Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => const HomePage()));
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




import 'package:flutter/material.dart';

import 'homepage.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/qrcd.jpg'),
            fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.transparent,
                Colors.transparent,
                Colors.white.withOpacity(0.9),
                Colors.white.withOpacity(1),
              ],
            ),
          ),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Spacer(),
                Text(textAlign: TextAlign.center,'Instant QR Codes',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,),),
                SizedBox(height: 20,),
                Text(textAlign: TextAlign.center,'Generate QR codes for websites, business cards, Wi-Fi connections, and more',style: TextStyle(fontSize: 16,color: Colors.grey[600],fontWeight: FontWeight.w500),),
                SizedBox(height: 30,),
                GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomePage()));
                  },
                  child: Container(
                    height: 55,
                    width: MediaQuery.of(context).size.width*0.9,
                    decoration: BoxDecoration(
                      color: Color(0xFF1B1BF1),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Center(child: Text('Get Started',style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold,color: Colors.white),)),
                  ),
                ),
                SizedBox(height: 30,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
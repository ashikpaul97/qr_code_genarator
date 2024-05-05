import 'package:flutter/material.dart';
import 'package:qr_code_genarator/Constant.dart';
import 'package:qr_flutter/qr_flutter.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey globalKey = GlobalKey();
  String qrData = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Constants.navbarColor,
        title: const Center(child: Text('QR Code Generator',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),)
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Stack(
            children: [
              /*Container(
                height: 85,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.cyan.withOpacity(0.4),
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(50),topRight: Radius.circular(50)),
                ),
              ),*/

              Container(
                child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children:  [
                    SizedBox(height: 90,),
                    RepaintBoundary(
                      key: globalKey,
                      child: Container(
                        child:Center(
                          child: qrData.isEmpty?
                          Text('Enter Data to generate QR Code',style: TextStyle(fontSize:25,fontWeight:FontWeight.bold,color: Colors.black),)
                              : QrImage(
                              data: qrData,
                              version: QrVersions.auto,
                              size: 200,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 50,),
                    SizedBox(
                      width: MediaQuery.of(context).size.width*0.9,
                      child: TextField(
                        cursorColor: Colors.black,
                        onChanged: (value){
                          setState(() {
                            qrData = value;
                          });
                        },
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide(color: Constants.navbarColor),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide(color: Constants.navbarColor),
                            ),

                            labelText: 'Enter Data',
                            hintText: 'Enter Data to generate Qr Code',
                          )
                      ),
                    )
                  ],
                ),
            ),
              ),]
          ),
        ),
      ),
    );
  }
}

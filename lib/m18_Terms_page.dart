import 'package:flutter/material.dart';
import 'package:food_panda/m3_home_page.dart';
import 'package:get/get.dart';
class MyTermsPage extends StatefulWidget{
  const MyTermsPage ({super.key,required this .title});
  final String title;
  @override
  State<MyTermsPage> createState() => _MyTermsPage();
}
class _MyTermsPage extends State<MyTermsPage>{
  Widget build (BuildContext context){
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white,
        leading: IconButton(onPressed: (){
          Get.off(const MyHomePage(title: ''));
        },icon: const Icon(Icons.arrow_back),),
        title: const Text('More'),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: SizedBox(
              height:60,
              width: 330,
              child: Card(
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Terms & conditions'),
                ),
              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.all(8.0),
            child: SizedBox(
              height: 60,width: 330,
              child: Card(
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Data policy'),
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:food_panda/m3_home_page.dart';
import 'package:get/get.dart';
class MyAddressPage extends StatefulWidget{
  const MyAddressPage ({super.key,required this.title});
  final String title;
  @override
  State<MyAddressPage> createState() =>_MyAddressPage();
}
class _MyAddressPage extends State<MyAddressPage>{
  @override
  Widget build (BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: Colors.white,
        leading: IconButton(onPressed: (){
          Get.off(const MyHomePage(title: ''));
        },icon: const Icon(Icons.arrow_back),),
        title: const Text('Addresses'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 160,),
            Image.asset('assets/images/m2.jpg',height: 200,),
            const Text('It\'s empty here',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
            const Text('You haven\'t saved any address yet. Add New'),
            const Text('Address to get started'),
            TextButton(onPressed: (){},
            style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.pink,
            ), child: const Text('Add New Address',style: TextStyle(fontWeight: FontWeight.bold),),)
          ],
        ),
      ),
    );
  }
}
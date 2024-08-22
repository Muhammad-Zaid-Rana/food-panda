import 'package:flutter/material.dart';
import 'package:food_panda/m3_home_page.dart';
import 'package:get/get.dart';
class MyOrderPage extends StatefulWidget{
  const MyOrderPage ({super.key,required this.title});
  final String title;
  @override
  State<MyOrderPage> createState() =>_MyOrderPage();
}
class _MyOrderPage extends State<MyOrderPage>{
  @override
  Widget build (BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(onPressed: (){
          Get.off(MyHomePage(title: ''));
        },icon: Icon(Icons.close),),
        title: Text('Orders'),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 200),
            Image.asset('assets/images/order.jpg',height: 120),
            Text('No Orders yet',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
            Text('Hungry? Please an order and it\'ll show here.',style: TextStyle(color: Colors.grey),)
          ],
        ),
      ),
    );
  }
}
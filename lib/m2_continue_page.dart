import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:food_panda/m3_home_page.dart';
import 'package:get/get.dart';
class MyContinuePage extends StatefulWidget {
  const MyContinuePage({super.key, required this.title});

  final String title;

  @override
  State<MyContinuePage> createState() => _MyContinuePageState();
}

class _MyContinuePageState extends State<MyContinuePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20,),
            Center(
              child: SizedBox(
                height: 280,width: 280,
                child: Image.asset('assets/images/m2.jpg'),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Center(child: Text('Allow location access on the next screen for:',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)),
            ),
            ListTile(
              leading: Container(
                height: 40,width: 40,
                decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.pinkAccent.withOpacity(0.1)),
                child: const Icon(Icons.delivery_dining,color: Colors.pink,),
              ) ,
              title:const Text ('Finding the best resturants and shops near you',style: TextStyle(color:Colors.black38),),
            ),
            ListTile(
              leading: Container(
                height: 40,width: 40,
                decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.pinkAccent.withOpacity(0.1)),
                child: const Icon(CupertinoIcons.home,color: Colors.pink,),
              ) ,
              title: const Text('Faster and more accurate delivery',style: TextStyle(color: Colors.black38),),
            ),
            const SizedBox(height: 130,),
            SizedBox(height: 40,width: 300,
              child: TextButton(onPressed: (){
            Get.to(const MyHomePage(title: 'MyHomePage',),);
              },
                style: TextButton.styleFrom(backgroundColor: Colors.pink,), child: const Text('Continue',style: TextStyle(color:Colors.white,)),),
            ),
          ],
        ),
      ),
    );
  }
}
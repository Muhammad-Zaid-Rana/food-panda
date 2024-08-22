import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_panda/m3_home_page.dart';
import 'package:get/get.dart';
class MyProfilePage extends StatefulWidget{
  const MyProfilePage ({super.key, required this.title});
  final String title;
  @override
  State<MyProfilePage> createState() => _MyProfilePage();
  }
  class _MyProfilePage extends State<MyProfilePage>{
  @override
    Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        leading:  IconButton(onPressed: (){
          Get.off(const MyHomePage(title: 'MyHomePage'));
        },icon: const Icon(Icons.close),),
        title: const Text('Profile'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(elevation: 2,
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: Text('Name'),
                      ),
                      const Spacer(),
                      IconButton(onPressed:(){},icon: const Icon(Icons.edit_outlined),),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Text('Zaid Rana',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  ),
                  const SizedBox(height: 5,),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(elevation: 2,
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: Text('Email'),
                      ),
                      const Spacer(),
                      IconButton(onPressed:(){},icon: const Icon(Icons.edit_outlined),),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Text('zaidr5439@gmail.com',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: ClipRRect(borderRadius: BorderRadius.circular(15),
                      child: Container(
                        color:Colors.blue[100],
                        child: const Text(' Verified ',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.lightBlue),),
                      ),
                    ),
                  ),
                  const SizedBox(height: 5,),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(elevation: 2,
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: Text('Mobile number'),
                      ),
                      const Spacer(),
                      IconButton(onPressed:(){},icon: const Icon(Icons.edit_outlined),),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Text('+928888899091',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: ClipRRect(borderRadius: BorderRadius.circular(15),
                      child: Container(
                        color:Colors.blue[100],
                        child: const Text(' Verified ',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.lightBlue),),
                      ),
                    ),
                  ),
                  const SizedBox(height: 5,),
                ],
              ),
            ),
          ),
          const Text('Connected accounts',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(elevation: 2,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(children: [
                  FaIcon(FontAwesomeIcons.facebook,color: Colors.blue[600],),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text('Facebook'),
                        Text('Connected',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                      ],
                    ),
                  ),
                  const Spacer(),
                  IconButton(onPressed: (){}, icon: const Icon(Icons.close)),
                ],),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(elevation: 2,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(children: [
                  Image.asset('assets/images/google.jpg',height: 25,width: 25,),
                   //const FaIcon(FontAwesomeIcons.google,color: Colors.blue,),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text('Google'),
                        Text('Connected',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                      ],
                    ),
                  ),
                  const Spacer(),
                  IconButton(onPressed: (){}, icon: const Icon(Icons.close)),
                ],),
              ),
            ),
          )
        ],
      ),
    );
  }
}
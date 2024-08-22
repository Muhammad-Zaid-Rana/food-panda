import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_panda/m3_home_page.dart';
import 'package:food_panda/m6_cart_page.dart';
import 'package:get/get.dart';
class MyFavouritePage extends StatefulWidget{
  const MyFavouritePage({super.key,required this.title});

  final String title;
  @override

  State<MyFavouritePage> createState() =>_MyFavouritePageState();

}
class _MyFavouritePageState extends State<MyFavouritePage> {
  bool isButton1Pressed = false;
  bool isButton2Pressed = false;
  bool hasfavourites = false;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(onPressed: (){
            Get.off(const MyHomePage(title: 'MyHomepage'));
          },icon:const Icon(Icons.arrow_back),color: Colors.pink.withOpacity(0.9),),
          title: const Text('Favourites',style: TextStyle(fontWeight: FontWeight.bold,),),
          actions: [
            IconButton(onPressed: (){
              Get.to(const MyCartPage(title: ''));
            }, icon: Icon(Icons.shopping_bag_outlined,color: Colors.pink.withOpacity(0.9),))
          ],
        ),
        body: Column(
          children: [
            TabBar(
                indicatorColor: Colors.pink.withOpacity(0.9),
                labelColor: Colors.pink.withOpacity(0.9),
                tabs: const [
                  Tab(
                    child: Text('Resturants',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                  ),
                  Tab(
                      child: Text('Shops',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),)
                  )
                ]
            ),
            Expanded(
              child: TabBarView(
                children: [
                  buildTabContent(),
                  buildTabContent(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  Widget buildTabContent() {
    return Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      isButton1Pressed = !isButton1Pressed;
                    });
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: isButton1Pressed
                        ? Colors.pink.withOpacity(0.9)
                        : Colors.white,
                    foregroundColor:
                    isButton1Pressed ? Colors.white : Colors.black,
                    side: const BorderSide(width: 1, color: Colors.grey),
                  ),
                  child: const Text('Delivery'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      isButton2Pressed = !isButton2Pressed;
                    });
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: isButton2Pressed
                        ? Colors.pink.withOpacity(0.9)
                        : Colors.white,
                    foregroundColor:
                    isButton2Pressed ? Colors.white : Colors.black,
                    side: const BorderSide(width: 1, color: Colors.grey),
                  ),
                  child: const Text('Pick-up'),
                ),
              )
            ],
          ),
          const SizedBox(height: 100,),
          hasfavourites
              ? Column(
              children: [
                Stack(children:[
                  ClipRRect(borderRadius: BorderRadius.circular(15),
                      child: Image.asset('assets/images/tikka.jpg')),
                  Positioned(top: 10,
                    child: ClipRRect(borderRadius: const BorderRadius.only(topRight: Radius.circular(15),bottomRight: Radius.circular(15)),
                      child: Container( //width: 60,height: 20,
                        color: Colors.pink.withOpacity(0.9),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('15% off ',style: TextStyle(color: Colors.white),),
                        ),
                      ),
                    ),
                  ),
                  Positioned(top: 50,
                    child: ClipRRect(borderRadius: const BorderRadius.only(topRight: Radius.circular(15),bottomRight: Radius.circular(15)),
                      child: Container(
                        color: Colors.pink.withOpacity(0.9),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('Welcome gift: free delivery',style: TextStyle(color: Colors.white),),
                        ),
                      ),
                    ),
                  )
                ],
                ),
                const Column(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('Zahid Tikka Shop      '),
                        Icon(Icons.star,color: Colors.yellow,),
                        Text('4.8'),
                        Text('(2000+)',style: TextStyle(color: Colors.black38),)
                      ],
                    ),
                    Text('\$\$ - PKR249 minimum         Pakistani'),
                    Row(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(CupertinoIcons.clock),
                        Text('25-40 min    ',style: TextStyle(color: Colors.black38),),
                        Icon(Icons.delivery_dining,color: Colors.pink,),
                        Text('Gift: free delivery',style: TextStyle(color: Colors.pink),)
                      ],
                    )
                  ],
                )
              ]
          )
              :Column(
            children: [
              Image.asset(
                'assets/images/pandafav.jpg',
                height: 130,
                width: 130,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'No favourites saved',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'To make ordering even faster, you\'ll find all your \n faves here. Just look for a heart icon!',
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.pink.withOpacity(0.9),
                  ),
                  child: const Text('Let\'s find some favourites'),
                ),
              ),
            ],
          )
        ]
    );
  }
}
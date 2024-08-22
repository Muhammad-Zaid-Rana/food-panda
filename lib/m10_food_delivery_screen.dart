import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:food_panda/m3_home_page.dart';
import 'package:food_panda/m9_shop_page.dart';
import 'package:get/get.dart';
import 'm4_search_page.dart';
import 'm5_favourites_page.dart';
import 'm6_cart_page.dart';
class MyFoodDeliveryPage extends StatefulWidget{
  const MyFoodDeliveryPage ({super.key,required this.title});
  final String title;
  @override
  State<MyFoodDeliveryPage> createState() => _MyFoodDeliveryPage();
}
class _MyFoodDeliveryPage extends State<MyFoodDeliveryPage>{
  @override
  Widget build (BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink.withOpacity(0.9),
        iconTheme: const IconThemeData(color: Colors.white),
        leading: IconButton(onPressed: (){Get.off(const MyHomePage(title: 'MyHomePage'));},icon: const Icon(Icons.arrow_back,color: Colors.white,),),
        actions: [
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 36),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 11),
                    SizedBox(width: 150,
                        child: Text('Khan International Textiles',overflow: TextOverflow.ellipsis,maxLines: 1,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),)),
                    Text('Multan',style: TextStyle(color: Colors.white),),
                  ],
                ),
              ),
              IconButton(onPressed: (){
                Get.to(const MyFavouritePage(title: 'MyFavouritePage'));
              }, icon: const Icon(Icons.favorite_border,color: Colors.white,)),
              IconButton(onPressed: (){
                Get.to(const MyCartPage(title: 'MyCartPage'));
              }, icon: const Icon(Icons.shopping_bag_outlined,color: Colors.white,)),
            ],),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 70,width: 400,
              color: Colors.pink.withOpacity(0.9),
              child:Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical:15),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: InkWell(onTap: (){Get.to(const MySearchPage(title: 'MySearchPage'),);},
                    child: Container(
                      width: 350,height: 20,
                      color: Colors.white,
                      child: const Row(
                        children: [
                          SizedBox(width: 10,),
                          Icon(Icons.search,color: Colors.black38,),
                          Text('  Search for shops & resturants',style: TextStyle(color: Colors.black38),)
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SingleChildScrollView(scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  for(var i=0;i<=11;i++)
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        height: 150,width: 150,
                        child: ClipRRect(borderRadius: BorderRadius.circular((15)),
                            child: Image.asset('assets/images/panda banner.jpg')),
                      ),
                    ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text('Order Again',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ),
           InkWell(onTap: (){Get.to(const MyShopPage(title: 'MyShopPage'));},
             child: Padding(
               padding: const EdgeInsets.symmetric(horizontal: 10),
               child: SizedBox(height: 230,width: 300,
                 child: Column(
                   children: [
                     Stack(
                         children:[
                       Image.asset('assets/images/biryani1.jpg',width: 350,height: 150,fit: BoxFit.cover,),
                           Positioned(top: 10,
                             child: ClipRRect(borderRadius: const BorderRadius.only(topRight: Radius.circular(2),bottomRight: Radius.circular(15)),
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
                      ] ),
                     Container(decoration: BoxDecoration(border: Border.all(width: 1,color: Colors.grey),borderRadius: BorderRadius.circular(4)),
                       child: Padding(
                         padding: const EdgeInsets.symmetric(horizontal: 10),
                         child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             const Row(
                               children: [
                                 Text('Master Biryani'),
                                 Icon(Icons.star_outline_rounded,color: Colors.orange,),
                                 Text('4.8',style: TextStyle(fontWeight: FontWeight.bold),),
                                 Text('(10000+)',style: TextStyle(color: Colors.grey),)
                               ],
                             ),
                             const Text('\$\$ - PKR 199 minimum -Biryani',style: TextStyle(color: Colors.grey),),
                             Row(
                               children: [
                                 const Icon(CupertinoIcons.clock),
                                 const Text('15-20 min'),
                                 Icon(Icons.delivery_dining,color: Colors.pink[400],),
                                 Text('Gift:Free Delivery',style: TextStyle(color: Colors.pink[400]),)
                               ],
                             )
                           ],
                         ),
                       ),
                     )
                   ],
                 ),
               ),
             ),
           ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text('Cuisines for you',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            ),
            SingleChildScrollView(scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  for(var i=0;i<=6;i++)
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(height: 100,width: 100,
                          child:Column(children: [
                            ClipRRect(borderRadius: BorderRadius.circular(15),
                                child: Image.asset('assets/images/pizza.jpg')),
                            const Text('Pizza'),
                          ],)
                      ),
                    )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  const Text('Delivery Fee Savers',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  const Spacer(),
                  IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_forward_ios_outlined,)),
                ],
              ),
            ),

            SingleChildScrollView(scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  for(var i=0;i<=12;i++)
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal:5,vertical: 10),
                      child: Card(
                        child: Column(
                          children: [
                            ClipRRect(borderRadius: BorderRadius.circular(15),
                                child: Image.asset('assets/images/freshco.jpg')),
                            const Row(
                              children: [
                                Text('Freshco - Bosan Road'),
                                Icon(Icons.star,color: Colors.orange,),
                                Text('4.8'),
                                Text('(500+)',style: TextStyle(color: Colors.black38),)
                              ],
                            ),
                            const Text('3.2km away -Pick up in 20 min',style: TextStyle(color: Colors.black38),)
                          ],
                        ),
                      ),
                    )
                ],
              ),
            ),
       Center(
         child: ClipRRect(borderRadius: BorderRadius.circular(15),
             child: Image.asset('assets/images/subway.jpg')),
       ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
              child: Text('All resturants',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SingleChildScrollView(scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    for(int i=0;i<5;i++)
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                      child: TextButton(onPressed: (){},style: TextButton.styleFrom(backgroundColor: Colors.white,),
                          child: const Row(
                        children: [
                          Text('Offers'),
                          Icon(Icons.arrow_drop_down)
                        ],
                      )),
                    ),
                  ],
                ),
              ),
            ),
            for(int i=0;i<11;i++)
              InkWell(onTap: (){Get.to(const MyShopPage(title: 'MyShopPage'));},
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                  child: Center(
                    child: SizedBox(height: 230,width: 300,
                      child: Column(
                        children: [
                          Stack(
                              children:[
                                Image.asset('assets/images/biryani1.jpg',width: 350,height: 150,fit: BoxFit.cover,),
                                Positioned(top: 10,
                                  child: ClipRRect(borderRadius: const BorderRadius.only(topRight: Radius.circular(2),bottomRight: Radius.circular(15)),
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
                              ] ),
                          Container(decoration: BoxDecoration(border: Border.all(width: 1,color: Colors.grey),borderRadius: BorderRadius.circular(4)),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10),
                              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Row(
                                    children: [
                                      Text('Master Biryani'),
                                      Icon(Icons.star_outline_rounded,color: Colors.orange,),
                                      Text('4.8',style: TextStyle(fontWeight: FontWeight.bold),),
                                      Text('(10000+)',style: TextStyle(color: Colors.grey),)
                                    ],
                                  ),
                                  const Text('\$\$ - PKR 199 minimum -Biryani',style: TextStyle(color: Colors.grey),),
                                  Row(
                                    children: [
                                      const Icon(CupertinoIcons.clock),
                                      const Text('15-20 min'),
                                      Icon(Icons.delivery_dining,color: Colors.pink[400],),
                                      Text('Gift:Free Delivery',style: TextStyle(color: Colors.pink[400]),)
                                    ],
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),

          ],
        ),
      ),
    );
  }
}
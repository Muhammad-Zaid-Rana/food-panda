import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_panda/m10_food_delivery_screen.dart';
import 'package:food_panda/m11_profile_page.dart';
import 'package:food_panda/m12_pandapro_page.dart';
import 'package:food_panda/m14_offers_page.dart';
import 'package:food_panda/m15_voucher_page.dart';
import 'package:food_panda/m16_order_page.dart';
import 'package:food_panda/m17_address_page.dart';
import 'package:food_panda/m17_setting_page.dart';
import 'package:food_panda/m18_Terms_page.dart';
import 'package:food_panda/m4_search_page.dart';
import 'package:food_panda/m5_favourites_page.dart';
import 'package:food_panda/m6_cart_page.dart';
import 'package:food_panda/m9_shop_page.dart';
import 'package:get/get.dart';
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink.withOpacity(0.9),
        iconTheme: const IconThemeData(color: Colors.white),
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
      drawer:Drawer(backgroundColor: Colors.white,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader( accountName:const Text('Zaid Rana'),accountEmail: null,
              currentAccountPicture: const CircleAvatar(backgroundColor: Colors.white,
                child: Text('Z',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.pink),),
              ),decoration: BoxDecoration(color: Colors.pink.withOpacity(0.9)),
            ),
            Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text('pandapay',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.pink.withOpacity(0.9)),),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: ClipRRect(borderRadius: BorderRadius.circular(15),
                        child: Container(decoration: BoxDecoration(color: Colors.pinkAccent[100]),
                          child: Text(' Rs. 0.00 ',style: TextStyle(color: Colors.pink.withOpacity(0.9)),),
                        ),
                      ),
                    )
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                  child: Text('Top up,check your balance and get exciting offers!'),
                ),
                const Divider(),
                InkWell(onTap: (){Get.to(const MyPandaPro(title: ''));},
                  child: const ListTile(
                    leading: FaIcon(FontAwesomeIcons.crown,color: Colors.deepPurple,),
                    title: Text('Become a pandapro'),
                  ),
                ),
                InkWell(onTap: (){Get.to(const MyOffersPage(title: ''));},
                  child: ListTile(
                    leading: Icon(Icons.discount_outlined,color: Colors.pink.withOpacity(0.9)),
                    title: const Text('Offers'),
                  ),
                ),
                InkWell(onTap: (){
                  Get.to(const MyVoucherPage(title: '',));
                },
                  child: ListTile(
                    leading: Icon(Icons.local_activity_outlined,color: Colors.pink.withOpacity(0.9)),
                    title: const Text('Vouchers'),
                  ),
                ),
                InkWell(onTap: (){Get.to(const MyFavouritePage(title: 'MyFavouritePage'));},
                  child: ListTile(
                    leading: Icon(Icons.favorite_border,color: Colors.pink.withOpacity(0.9)),
                    title: const Text('Favourites'),
                  ),
                ),
                InkWell(onTap: (){
                  Get.to(const MyOrderPage(title: ''));
                },
                  child: ListTile(
                    leading: Icon(Icons.payment,color: Colors.pink.withOpacity(0.9)),
                    title: const Text('Orders & reordering'),
                  ),
                ),
                InkWell(onTap: (){Get.to(const MyProfilePage(title: 'MyProfilePage'));},
                  child: ListTile(
                    leading: Icon(CupertinoIcons.person,color: Colors.pink.withOpacity(0.9)),
                    title: const Text('View profile'),
                  ),
                ),
                InkWell(onTap: (){
                  Get.to(const MyAddressPage(title: ''));
                },
                  child: ListTile(
                    leading: Icon(Icons.location_on_outlined,color: Colors.pink.withOpacity(0.9)),
                    title: const Text('Adresses'),
                  ),
                ),
              //  ListTile(
                //  leading: FaIcon(FontAwesomeIcons.trophy,color: Colors.pink.withOpacity(0.9)),
                  //title: const Text('Panda rewards'),
                //),
                const Divider(),
                 Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                  child: InkWell(onTap: (){Get.to(const MySettingPage(title: 'title'));},
                      child: const Text('Settings')),
                ),
                 Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                  child: InkWell(onTap: (){ Get.to(const MyTermsPage(title: ''));},
                      child: const Text('Terms & conditions / Privacy')),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                  child: Text('Log out'),
                )
              ],
            )
          ],
        ),
      ) ,
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
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
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                  child: InkWell(onTap: (){Get.to(const MyFoodDeliveryPage(title: 'MyFoodDeliveryPage'));},
                    child: SizedBox(
                      width: 160,height: 210,
                      child: Card(color: Colors.white,
                        child: Column(
                          children: [
                            const Text('Food delivery',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                            const Text('Order food you love',style: TextStyle(color: Colors.black54),),
                            Image.asset('assets/images/biryani.jpg'),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
                  child: InkWell(onTap: (){Get.to(const MyFoodDeliveryPage(title: 'MyFoodDeliveryPage'));},
                    child: SizedBox(
                      width: 160,height: 210,
                      child: Card(color: Colors.white,
                        child: Column(
                          children: [
                            const Text('Shops',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                            const Text('Top brands to your',style: TextStyle(color: Colors.black54),),
                            const Text('door',style: TextStyle(color: Colors.black54),),
                            Image.asset('assets/images/grocery.jpg',height:130,width: 150,),

                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: InkWell(onTap: (){Get.to(const MyFoodDeliveryPage(title: 'MyFoodDeliveryPage'));},
                    child: SizedBox(width: 165,height: 70,
                      child: Card(color: Colors.white,
                        child: Row(
                          children: [
                            const Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  child: Text('Pick-up',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 1),
                                  child: Text('Self-collect for',style: TextStyle(color: Colors.black54,fontSize: 10),),
                                ),
                                Text(' 50% off',style: TextStyle(color: Colors.black54,fontSize: 10),)
                              ],
                            ),
                            Image.asset('assets/images/shoping_bag.jpg',height: 50,width: 50,),

                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(onTap: (){Get.to(const MyFoodDeliveryPage(title: 'MyFoodDeliveryPage'));},
                  child: SizedBox(
                    height: 70,width: 165,
                    child: Card(color: Colors.white,
                      child: Row(
                        children: [
                          const Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                child: Text('pandago',style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold),),
                              ),
                              Text('Send parcels',style: TextStyle(color: Colors.black54,fontSize: 10),),
                              Text('in a tap',style: TextStyle(color: Colors.black54,fontSize: 10),),
                            ],
                          ),
                          Image.asset('assets/images/pandago.jpg',height: 50,width: 50,)
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
              child: Text('Free delivery',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ),
            SingleChildScrollView(scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  for(var i=0;i<=14;i++)
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(onTap: (){Get.to(const MyShopPage(title: 'MyShopPage'));},
                        child: SizedBox(
                          child: Column(
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
                                const Column(
                                  children: [
                                    Row(
                                      children: [
                                        Text('Zahid Tikka Shop      '),
                                        Icon(Icons.star,color: Colors.yellow,),
                                        Text('4.8'),
                                        Text('(2000+)',style: TextStyle(color: Colors.black38),)
                                      ],
                                    ),
                                    Text('\$\$ - PKR249 minimum         Pakistani'),
                                    Row(
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
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text('Your daily deals',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
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
            const SizedBox(height: 50,),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text('Cuisines',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
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
            SingleChildScrollView(scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  for(var i=0;i<=6;i++)
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
                      child: SizedBox(height: 100,width: 100,
                        child: Column(children: [
                          ClipRRect(borderRadius: BorderRadius.circular(15),
                              child: Image.asset('assets/images/burger.jpg')),
                          const Text('Burger')
                        ],),
                      ),
                    )
                ],
              ),
            ),
            const SizedBox(height: 50,),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text('Popular resturants',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ),
            SingleChildScrollView(scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  for(var i=0;i<=13;i++)
                    InkWell(onTap: (){Get.to(const MyShopPage(title: 'MyShopPage'));},
                      child: SizedBox(
                        child: Column(
                          children: [
                            Stack(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 10),
                                  child: ClipRRect(borderRadius: BorderRadius.circular(15),
                                      child: InkWell(onTap: (){Get.to(const MyShopPage(title: 'MyShopPage'));},
                                          child: Image.asset('assets/images/Chinease.jpg'))),
                                ),
                                Positioned(left: 10,top: 10,
                                  child: ClipRRect(borderRadius: const BorderRadius.only(topRight:Radius.circular(15),bottomRight: Radius.circular(15)),
                                    child: Container(
                                      color: Colors.pink.withOpacity(0.9),
                                      child: const Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Text('Featured'),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(top: 50,left: 10,
                                  child: ClipRRect(borderRadius: const BorderRadius.only(topRight: Radius.circular(15),bottomRight: Radius.circular(15)),
                                    child: Container(
                                      color: Colors.pink.withOpacity(0.9),
                                      child: const Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Text('15% off'),
                                      ),
                                    ),
                                  ),
                                ),

                              ], ),
                            InkWell(onTap: (){Get.to(const MyShopPage(title: 'MyShopPage'));},
                              child: const Column(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Row(mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text('Chinease Fusion       ',style: TextStyle(fontWeight: FontWeight.bold),),
                                      Icon(Icons.star,color: Colors.yellow,),
                                      Text('4.7'),
                                      Text('(1000+)',style: TextStyle(color: Colors.black38),),
                                    ],
                                  ),
                                  Text('\$\$ - PKR249 minimum         Chinease'),
                                  Row(
                                    children: [
                                      Icon(CupertinoIcons.clock),
                                      Text('25-40 min    ',style: TextStyle(color: Colors.black38),),
                                      Icon(Icons.delivery_dining,color: Colors.pink,),
                                      Text('Gift: free delivery',style: TextStyle(color: Colors.pink),)
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),

                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(5)),
                    border: Border.all(width: 1,color: Colors.grey)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Become a pro',style: TextStyle(fontWeight:FontWeight.bold,fontSize: 20),),
                      Row(
                        children: [
                          const Text('Get unlimited free deliveries '),
                          const Spacer(),
                          Image.asset('assets/images/pandapro.jpg',height: 30,width: 70,),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Top picks: Pasta',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ),
            SingleChildScrollView(scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  for(var i=0;i<=13;i++)
                    InkWell(onTap: (){Get.to(const MyShopPage(title: 'MyShopPage'));},
                      child: SizedBox(
                        child: Column(
                          children: [
                            Stack(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 10),
                                  child: ClipRRect(borderRadius: BorderRadius.circular(15),
                                      child: Image.asset('assets/images/pizza.jpg')),
                                ),
                                Positioned(top:10,left: 10,
                                  child: ClipRRect(borderRadius: const BorderRadius.only(topRight: Radius.circular(15),bottomRight: Radius.circular(15)),
                                    child: Container(
                                      color: Colors.pink.withOpacity(0.9),
                                      child: const Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Text('Featured'),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(top: 50,left: 10,
                                  child: ClipRRect(borderRadius: const BorderRadius.only(topRight: Radius.circular(15),bottomRight: Radius.circular(15)),
                                    child: Container(
                                      color: Colors.pink.withOpacity(0.9),
                                      child: const Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Text('10% off'),
                                      ),
                                    ),
                                  ),
                                ),

                              ], ),
                            const Column(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text('Italian Pizza        ',style: TextStyle(fontWeight: FontWeight.bold),),
                                    Icon(Icons.star,color: Colors.yellow,),
                                    Text('4.7'),
                                    Text('(1000+)',style: TextStyle(color: Colors.black38),),
                                  ],
                                ),
                                Text('\$\$ - PKR249 minimum         Chinease'),
                                Row(
                                  children: [
                                    Icon(CupertinoIcons.clock),
                                    Text('25-40 min    ',style: TextStyle(color: Colors.black38),),
                                    Icon(Icons.delivery_dining,color: Colors.pink,),
                                    Text('Gift: free delivery',style: TextStyle(color: Colors.pink),)
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 20),
              child: Text('Pick up the resturants near you',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            ),

            Stack(children: [
              Container(
                width: 400, // set the width to 200 pixels
                height: 260, // set the height to 200 pixels
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/map.jpg'),
                    fit: BoxFit.cover, // scale the image to cover the entire container
                  ),
                ),
              ),
              SingleChildScrollView(scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    for(var i=0;i<=12;i++)
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
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

            ], ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
              child: Text('Shops',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            ),
            SingleChildScrollView(scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                    child: SizedBox(height: 100,width: 100,
                      child: Column(
                        children: [
                          Image.asset('assets/images/shop.jpg'),
                          const Text('Convenience',style: TextStyle(fontWeight: FontWeight.bold),),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                    child: SizedBox(height: 100,width: 100,
                      child: Column(
                        children: [
                          Image.asset('assets/images/bag.jpg',height: 70,width: 120,),
                          const Text('Groceries',style: TextStyle(fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10,vertical:10,),
                    child: SizedBox(height: 100,width: 100,
                      child: Column(
                        children: [
                          Image.asset('assets/images/medicine.jpg',height: 60,width: 60,),
                          const Text('Health &',style: TextStyle(fontWeight: FontWeight.bold),),
                          const Text('Wellbeing',style: TextStyle(fontWeight: FontWeight.bold,),),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                    child: SizedBox(height: 100,width: 100,
                      child: Column(
                        children: [
                          Image.asset('assets/images/phone.jpg',height: 60,width: 60,),
                          const Text('Electronics',style: TextStyle(fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(5)),
                    border: Border.all(width: 1,color: Colors.grey)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Try panda rewards!',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                      Row(
                        children: [
                          const Text('Earn points and win prizes'),
                          const Spacer(),
                          Image.asset('assets/images/panda_rewards.jpg',height: 30,width: 100,)
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sticky_header/flutter_sticky_header.dart';
import 'package:food_panda/m3_home_page.dart';
import 'package:get/get.dart';
class MyOffersPage extends StatefulWidget{
  const MyOffersPage ({super.key,required this.title});
  final String title;
  @override
  State<MyOffersPage> createState() => _MyOffersPage();
}
class _MyOffersPage extends State<MyOffersPage> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(backgroundColor: Colors.white,
            expandedHeight: 150,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text('Offers', style: TextStyle(
                  fontSize: 20, fontWeight: FontWeight.bold),),
              background: Image.asset(
                'assets/images/offer.jpg', height: 150, fit: BoxFit.cover,),
            ),
            leading:  IconButton(onPressed: () {
              Get.off(const MyHomePage(title: ''));
            }, icon: const Icon(Icons.arrow_back,),),
          ),
          SliverToBoxAdapter(
            child: Container(color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Top offers for you', style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            for(int i = 0; i < 6; i++)
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Card(color: Colors.white,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        Stack(children: [
                                          ClipRRect(borderRadius: const BorderRadius.only(topRight:Radius.circular(12) ,topLeft:Radius.circular(12)),
                                            child: Image.asset('assets/images/biryani1.jpg',
                                              height: 180,
                                              width: 230,
                                              fit: BoxFit.cover,),
                                          ),
                                          Positioned(top: 10,
                                            child: ClipRRect(
                                              borderRadius: const BorderRadius.only(
                                                  topRight: Radius.circular(15),
                                                  bottomRight: Radius.circular(15)),
                                              child: Container( //width: 60,height: 20,
                                                color: Colors.pink.withOpacity(0.9),
                                                child: const Padding(
                                                  padding: EdgeInsets.all(8.0),
                                                  child: Text('15% off ',
                                                    style: TextStyle(
                                                        color: Colors.white),),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Positioned(top: 50,
                                            child: ClipRRect(
                                              borderRadius: const BorderRadius.only(
                                                  topRight: Radius.circular(15),
                                                  bottomRight: Radius.circular(15)),
                                              child: Container(
                                                color: Colors.pink.withOpacity(0.9),
                                                child: const Padding(
                                                  padding: EdgeInsets.all(8.0),
                                                  child: Text(
                                                    'Welcome gift: free delivery',
                                                    style: TextStyle(
                                                        color: Colors.white),),
                                                ),
                                              ),
                                            ),
                                          )
                                        ]),
                                        const Row(
                                          children: [
                                            SizedBox(width: 120,
                                                child: Text(
                                                  'Master Biryani - Gulshan - Market',
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 15),
                                                  overflow: TextOverflow
                                                      .ellipsis,)),
                                            Icon(Icons.star, color: Colors.orange,),
                                            Text('4.9'),
                                            Text('(52000+)', style: TextStyle(
                                                color: Colors.black38),)
                                          ],
                                        ),
                                        const Text(
                                            '\$\$ - PKR249 minimum       Pakistani'),
                                        const Row(
                                          children: [
                                            Icon(CupertinoIcons.clock),
                                            Text('25-40 min    ', style: TextStyle(
                                                color: Colors.black38),),
                                            Icon(Icons.delivery_dining,
                                              color: Colors.pink,),
                                            Text('Gift: free delivery ',
                                              style: TextStyle(color: Colors.pink),)
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
                      const SizedBox(height: 40,)
                    ],
                  ),
                )
            ),
          ),
          SliverToBoxAdapter(
            child: Card(
              color: Colors.white,
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Discover more deals', style: TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),),
                  SingleChildScrollView(scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        for(int i = 0; i <= 6; i++)
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ClipRRect(borderRadius: BorderRadius.circular(12),
                              child: Image.asset('assets/images/panda banner.jpg',
                                height: 150,),
                            ),
                          ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10,)
                ],
              ),
            ),
          ),
          SliverStickyHeader(
            header: Container(
              color: Colors.white,
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: List.generate(sticky.length, (index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Colors.grey),
                            borderRadius: const BorderRadius.all(Radius.circular(12)),
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(7.0),
                                child: Text(sticky[index]['text']),
                              ),
                              Icon(sticky[index]['icon']),
                            ],
                          ),
                        ),
                      );
                    }),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      '37 restaurants',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                  return Container(
                    color: Colors.white,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width * 0.35,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image.asset(shops[index]['image']),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.6,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 100,
                                      child: Text(
                                        shops[index]['text1'],
                                        overflow: TextOverflow.ellipsis,
                                        style: const TextStyle(fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    const Spacer(),
                                    Icon(shops[index]['Icon1'], color: Colors.orange),
                                    Text(
                                      shops[index]['text2'],
                                      style: const TextStyle(fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      shops[index]['text3'],
                                      style: const TextStyle(color: Colors.grey),
                                    ),
                                  ],
                                ),
                                Text(
                                  shops[index]['text4'],
                                  style: const TextStyle(color: Colors.grey),
                                ),
                                Row(
                                  children: [
                                    Icon(shops[index]['Icon2'], color: Colors.grey),
                                    Text(
                                      shops[index]['text5'],
                                      style: const TextStyle(color: Colors.grey),
                                    ),
                                    Icon(shops[index]['Icon3'], color: Colors.grey),
                                    Text(
                                      shops[index]['text6'],
                                      style: const TextStyle(color: Colors.pink),
                                    ),
                                  ],
                                ),
                                Container(
                                  width: 160,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    border: Border.all(width: 1, color: Colors.grey),
                                    color: Colors.grey[100],
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Row(
                                    children: [
                                      Icon(shops[index]['Icon4'], color: Colors.pink),
                                      Text(
                                        shops[index]['text7'],
                                        overflow: TextOverflow.ellipsis,
                                        style: const TextStyle(fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
                childCount: shops.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
  List<Map<String,dynamic>>sticky=[
    {
      'text':'Sort',
      'Icon':Icons.keyboard_arrow_down_outlined,
    },
    {
      'text':'Free Delivery',
      'Icon':Icons.keyboard_arrow_down_outlined,
    },
    {
      'text':'Cuisines',
      'Icon':Icons.keyboard_arrow_down_outlined,
    }
  ];
List<Map<String,dynamic>>shops=[
  {
    'image':'assets/images/freshco.jpg',
    'text1':'Freshco - T Chowk',
    'Icon1':Icons.star_outline,
    'text2':'4.6',
    'text3':'(200+)',
    'text4':'\$\$ Cakes & Bakery',
    'Icon2':CupertinoIcons.clock,
    'text5':'25-40 min',
    'Icon3':Icons.delivery_dining,
    'text6':'Free',
    'Icon4':Icons.discount_outlined,
    'text7':'20% off + 1 offer',
  },
    {
      'image':'assets/images/tikka.jpg',
      'text1':'Zahid Tikka Shop',
      'Icon1':Icons.star_outline,
      'text2':'4.6',
      'text3':'(200+)',
      'text4':'\$\$ Tikka ',
      'Icon2':CupertinoIcons.clock,
      'text5':'25-40 min',
      'Icon3':Icons.delivery_dining,
      'text6':'Free',
      'Icon4':Icons.discount_outlined,
      'text7':'20% off + 1 offer',
    },
  {
    'image':'assets/images/pizza.jpg',
    'text1':'Lit Multan',
    'Icon1':Icons.star_outline,
    'text2':'4.6',
    'text3':'(200+)',
    'text4':'\$\$ Pizza ',
    'Icon2':CupertinoIcons.clock,
    'text5':'25-40 min',
    'Icon3':Icons.delivery_dining,
    'text6':'Free',
    'Icon4':Icons.discount_outlined,
    'text7':'20% off + 1 offer',
  },
  {
    'image':'assets/images/burger.jpg',
    'text1':'Burger King',
    'Icon1':Icons.star_outline,
    'text2':'4.6',
    'text3':'(200+)',
    'text4':'\$\$ Pizza ',
    'Icon2':CupertinoIcons.clock,
    'text5':'25-40 min',
    'Icon3':Icons.delivery_dining,
    'text6':'Free',
    'Icon4':Icons.discount_outlined,
    'text7':'20% off + 1 offer',
  },
  {
    'image':'assets/images/biryani1.jpg',
    'text1':'Master Biryani Gulgusht Multan',
    'Icon1':Icons.star_outline,
    'text2':'4.9',
    'text3':'(200+)',
    'text4':'\$\$ Biryani ',
    'Icon2':CupertinoIcons.clock,
    'text5':'25-40 min',
    'Icon3':Icons.delivery_dining,
    'text6':'Free',
    'Icon4':Icons.discount_outlined,
    'text7':'20% off + 1 offer',
  },
  {
    'image':'assets/images/Chinease.jpg',
    'text1':'Shangrilla Cuisine',
    'Icon1':Icons.star_outline,
    'text2':'4.9',
    'text3':'(200+)',
    'text4':'\$\$ Chinese ',
    'Icon2':CupertinoIcons.clock,
    'text5':'25-40 min',
    'Icon3':Icons.delivery_dining,
    'text6':'Free',
    'Icon4':Icons.discount_outlined,
    'text7':'20% off + 1 offer',
  },
];

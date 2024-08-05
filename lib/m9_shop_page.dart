import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_panda/m3_home_page.dart';
import 'package:get/get.dart';
class MyShopPage extends StatefulWidget {
  const MyShopPage ({super.key, required this.title});
  final String title;
  @override
  State<MyShopPage> createState() => _MyShopPage();
}
class _MyShopPage extends State<MyShopPage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(onPressed: (){
          Get.off(const MyHomePage(title: 'MyHomePage'));},
            icon: Icon(Icons.arrow_back,color: Colors.pink[400],)),
        actions: [
          const SizedBox(width: 60,),
          IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border,color: Colors.pink[400],)),
          IconButton(onPressed: (){}, icon: Icon(Icons.share_outlined,color: Colors.pink[400],)),
          IconButton(onPressed: (){}, icon:Icon(Icons.search,color: Colors.pink[400],))
        ],
      ),
      body: SafeArea(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: CustomScrollView(
            slivers:  [
              SliverList(
                delegate: SliverChildListDelegate([
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(borderRadius: BorderRadius.circular(15),
                            child: Image.asset('assets/images/biryani1.jpg',height: 50,width: 60,)),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5),
                          child: Text('Master Biryani - Gulshan \nMarket',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 8),
                    child: Row(
                      children: [
                        const Text('1.9km away |'),
                        const Text(' Free delivery',style: TextStyle(fontWeight: FontWeight.bold),),
                        const Spacer(),
                        Text('More info',style: TextStyle(color: Colors.pink[400]),)
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 8),
                    child: Text('Rs. 249.00 Minimum | Rs. 9.99 service'),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 8),
                    child: Row(
                      children: [
                        Icon(Icons.star_outline_rounded,color: Colors.pink[400],),
                        const Text(' 4.9 ',style: TextStyle(fontWeight: FontWeight.bold),),
                        const Text('5000+ ratings'),
                        const Spacer(),
                        Text('See reviews',style: TextStyle(color: Colors.pink[400]),),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 8),
                    child: Row(
                      children: [
                        Icon(CupertinoIcons.clock,color: Colors.pink[400],),
                        const Text('Delivery: 5-20 min'),
                        const Spacer(),
                        const Text('Change',style: TextStyle(color: Colors.grey),)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 8),
                    child: Row(
                      children: [
                        Icon(Icons.discount_outlined,color: Colors.pink[400],),
                        const Text('Available deals',style: TextStyle(fontWeight: FontWeight.bold),),
                        const Spacer(),
                        Text('See all',style: TextStyle(color: Colors.pink[400]),)
                      ],
                    ),
                  ),
                ]),
              ),
              DefaultTabController(length: 2,
                child: SliverAppBar(
                  elevation: 0,
                  backgroundColor: Colors.white,
                  automaticallyImplyLeading: false,
                  title: TabBar(
                    indicatorColor: Colors.pink[400],
                    labelColor: Colors.pink[400],
                    isScrollable: true,
                    tabs: const [
                      Tab(
                        child: Text('Popular',style: TextStyle(fontWeight: FontWeight.bold),),
                      ),
                      Tab(
                        child: Text('Summer Deals',style: TextStyle(fontWeight: FontWeight.bold),),
                      )
                    ],),
                ),
              ),
              SliverList(
                  delegate: SliverChildListDelegate([
                    const Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                          child: FaIcon(FontAwesomeIcons.fire,color: Colors.red,),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                          child: Text('Popular',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
                        )
                      ],
                    ),
                    for(int i=0;i<=4;i++)
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text('Summer Deal'),
                                  Text('Rs.387.00',style: TextStyle(color: Colors.pink[400]),),
                                  const Text('Single Chicken Biryni & coca \n -345ml '),

                                ],
                              ),
                            ),
                            const Spacer(),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Stack(children:[ Image.asset('assets/images/burger.jpg',height: 60,width: 100,),
                                Positioned(bottom: 5,right: 5,
                                  child: InkWell(onTap: (){},
                                    child: Container(decoration: const BoxDecoration(shape: BoxShape.circle,color: Colors.white),
                                        child: const Icon(Icons.add,color: Colors.pink,)),
                                  ),
                                )
                              ]),
                            ),
                            const Divider(),
                          ],
                        ),
                      ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                      child: Row(
                        children: [
                          Text('Fellow foodies say',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                          Spacer(),
                          Text('See all',style: TextStyle(fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ),
                    SingleChildScrollView(scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          for(var i=0;i<=5;i++)
                            SizedBox(height: 100,
                              child:Card(
                                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text('Flavorful,Delicious Burger,But the \n price is not Reasonable'),
                                    ),
                                    Row(
                                      children: [
                                        for(var i=0;i<=4;i++)
                                          const Icon(Icons.star_outline_rounded,color: Colors.orange,),
                                        const Text('Muhammad  3 weeks ago'),

                                      ],
                                    )
                                  ],
                                ),
                              ),
                            )
                        ],
                      ),
                    ),
                    const Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                          child: FaIcon(FontAwesomeIcons.fire,color: Colors.red,),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                          child: Text('Summer Deals',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
                        )
                      ],
                    ),

                    for(int i=0;i<=4;i++)
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text('Summer Deal'),
                                  Text('Rs.387.00',style: TextStyle(color: Colors.pink[400]),),
                                  const Text('Single Chicken Biryni & coca \n -345ml '),

                                ],
                              ),
                            ),
                            const Spacer(),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Stack(children:[ Image.asset('assets/images/burger.jpg',height: 60,width: 100,),
                                Positioned(bottom: 5,right: 5,
                                  child: InkWell(onTap: (){},
                                    child: Container(decoration: const BoxDecoration(shape: BoxShape.circle,color: Colors.white),
                                        child: const Icon(Icons.add,color: Colors.pink,)),
                                  ),
                                )
                              ]),
                            ),
                            const Divider(),
                          ],
                        ),
                      ),
                  ])
              )
            ],
          ),
        ),
      ),
    );
  }
}


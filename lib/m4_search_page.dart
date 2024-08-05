import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_panda/m3_home_page.dart';
import 'package:get/get.dart';
class MySearchPage extends StatefulWidget {
  const MySearchPage({super.key, required this.title});

  final String title;

  @override
  State<MySearchPage> createState() => _MySearchPageState();
}

class _MySearchPageState extends State<MySearchPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 2,
      child: Scaffold(resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        appBar: AppBar(backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: (){
              Get.off(const MyHomePage(title: 'MyHomePage'));
            },icon: const Icon(Icons.arrow_back,),
          ),
          title:
          SizedBox(height: 50,
            child: TextField(
              decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search,color: Colors.black54,),
                  hintText: 'Search for shops & resturants',
                  fillColor: Colors.grey[50],
                  filled: true,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(30),
                  )
              ),
            ),
          ),
        ),
        body: Column(
          children: [
            TabBar(indicatorColor: Colors.pink.withOpacity(0.9),
                labelColor: Colors.pink.withOpacity(0.9),
                tabs:const [
                  Tab(
                    child: Text('Resturants',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                  ),
                  Tab(
                    child: Text('Shops',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                  )
                ]
            ),
            Expanded(
              child: TabBarView(
                  children: [
                    //Resturants
                    Padding(
                        padding: const EdgeInsets.all(10.0),
                        child:Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('Popular resturants',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: TextButton(onPressed: (){},
                                    style: TextButton.styleFrom(
                                        side: const BorderSide(width: 1,color: Colors.grey)
                                    ), child: const Text('pizza'),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: TextButton(onPressed: (){},
                                    style: TextButton.styleFrom(
                                        side: const BorderSide(width: 1,color: Colors.grey)
                                    ), child: const Text('burger'),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: TextButton(onPressed: (){},
                                    style: TextButton.styleFrom(
                                        side: const BorderSide(width: 1,color: Colors.grey)
                                    ), child: const Text('KFC'),),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child:   TextButton(onPressed: (){},
                                    style: TextButton.styleFrom(
                                        side: const BorderSide(width: 1,color: Colors.grey)
                                    ), child: const Text('pizza mddle size price 300'),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child:   TextButton(onPressed: (){},
                                    style: TextButton.styleFrom(
                                        side: const BorderSide(width: 1,color: Colors.grey)
                                    ), child: const Text('biryani'),),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child:   TextButton(onPressed: (){},
                                    style: TextButton.styleFrom(
                                        side: const BorderSide(width: 1,color: Colors.grey)
                                    ), child: const Text('dominos'),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child:   TextButton(onPressed: (){},
                                    style: TextButton.styleFrom(
                                        side: const BorderSide(width: 1,color: Colors.grey)
                                    ), child: const Text('freshco zinger burger'),),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child:  TextButton(onPressed: (){},
                                    style: TextButton.styleFrom(
                                        side: const BorderSide(width: 1,color: Colors.grey)
                                    ), child: const Text('pizza middle size price 300'),),
                                )
                              ],
                            ),
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('Cuisines',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                            ),
                            SingleChildScrollView(scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  for(var i=0;i<=8;i++)
                                    Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: ClipRRect(borderRadius: BorderRadius.circular(15),
                                              child: Image.asset('assets/images/pizza.jpg',height: 80,width: 120,)),
                                        ),
                                        const Text('Pizza',style: TextStyle(fontWeight: FontWeight.bold),)
                                      ],
                                    )
                                ],),
                            )

                          ],
                        )
                    ),
                    //Shops
                    const Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: FaIcon(FontAwesomeIcons.fire),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text('Popular Searches',style: TextStyle(fontWeight:FontWeight.bold,fontSize: 20),),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Row(
                            children:[
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text('burger'),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text('pizza'),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text('Ice-cream'),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text('noodles'),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text('burger king'),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text('pizza'),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text('pharmacy'),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text('dominos'),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text('icecream'),
                              )
                            ],
                          ),
                        )
                      ],
                    )
                  ]
              ),
            )
          ],
        ),
      ),
    );
  }
}
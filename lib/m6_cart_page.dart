import 'package:flutter/material.dart';
import 'package:food_panda/m3_home_page.dart';
import 'package:food_panda/m7_checkout_page.dart';
import 'package:get/get.dart';
class MyCartPage extends StatefulWidget {
  const MyCartPage({super.key, required this.title});

  final String title;

  @override
  State<MyCartPage> createState() => _MyCartPageState();
}
class _MyCartPageState extends State<MyCartPage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(backgroundColor: Colors.white,
        appBar: AppBar(backgroundColor: Colors.white,
          leading: IconButton(onPressed: (){
            Get.off(MyHomePage(title: 'MyHomePage'));
          },icon: Icon(Icons.close),color: Colors.pink[400],),

          actions: const [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 2),
                  child: Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Cart',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                      Text('Rubbani Rewari Nashta')
                    ],
                  ),
                ),
                SizedBox(width: 145,),
              ],
            )
          ],
        ),
        body:Column(
          children: [
            Expanded(child:
            SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(width: 20,height: 6,color: Colors.pink,),
                      Container(
                        width: 30,height: 30,
                        decoration: const BoxDecoration(shape: BoxShape.circle,color: Colors.pink),
                        child:const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                          child: Text("1",style: TextStyle(color: Colors.white),),
                        ),
                      ),
                      Container(width: 110,height: 6,color: Colors.pink,),
                      Container(
                        width: 30,height: 30,
                        decoration: const BoxDecoration(shape: BoxShape.circle,color: Colors.pink,),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                          child: Text('2',style: TextStyle(color: Colors.white),),
                        ),
                      ),
                      Container(height: 6,width: 115,color: Colors.grey,),
                      Container(
                        width: 30,height: 30,
                        decoration:  BoxDecoration(shape: BoxShape.circle,border: Border.all(color: Colors.grey,width: 4,)),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 6,vertical: 2),
                          child: Text('3'),
                        ),
                      ),
                      Container(width: 17,height: 6,color: Colors.grey,)
                    ],
                  ),
                  const Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Text('Menue',style: TextStyle(fontSize: 13,color: Colors.grey),),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal:84 ),
                        child: Text('Cart',style: TextStyle(fontSize: 13,color: Colors.grey),),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 18),
                        child: Text('Checkout',style: TextStyle(fontSize: 13,color: Colors.grey),),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(height: 80,width: 350,
                      child: Card(color: Colors.white,
                        child:Row(
                          children: [
                            Image.asset('assets/images/delivery.jpg',height: 60,width: 80,),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 20),
                              child: Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text('Estimated Delivery',style: TextStyle(color: Colors.grey,)),
                                  const Text('Standard Delivery',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                                  Text('Change',style: TextStyle(color: Colors.pink[400]),)
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(height: 30,width: 50,
                          decoration: BoxDecoration(border: Border.all(width: 2,color: Colors.grey)),
                          child: Row(
                            children: [
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 5),
                                child: Text('1'),
                              ),
                              Icon(Icons.keyboard_arrow_down,color: Colors.pink[400],)
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset('assets/images/parathay.jpg',height: 60,width: 100,),
                        ),
                        Text('Garam Garam \n Nashta 1',style: TextStyle(color: Colors.pink[400]),),
                        const Spacer(),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Text('Rs 199.0'),
                        ),
                      ],
                    ),
                  ),
                  const Divider(),
                  Container(height: 60,width: double.infinity,color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                      child: Text('Add more items',style: TextStyle(color:Colors.pink[400]),),
                    ),),
                  const SizedBox(height: 5,),
                  Container(height: 210,width: double.infinity,
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Popular with your order',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                          const Text('Other customers also bought these',style: TextStyle(color:Colors.black38),),
                          SingleChildScrollView(scrollDirection: Axis.horizontal,

                            child: Row(
                              children:[
                                for(var i=0;i<=4;i++)
                                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Stack(
                                          children:[ Padding(
                                            padding: const EdgeInsets.symmetric(vertical: 10,),
                                            child: Image.asset('assets/images/parathay.jpg',height: 100,width: 200,),
                                          ),
                                            Positioned(bottom:10,right: 24,
                                              child: Container(height: 35,width: 35,decoration: const BoxDecoration(shape: BoxShape.circle,color: Colors.white),
                                                  child: IconButton(onPressed: (){},icon:const Icon(Icons.add,size: 20,),color: Colors.pink[400],)),
                                            )
                                          ]),
                                      const Padding(
                                        padding: EdgeInsets.symmetric(horizontal: 19),
                                        child: Text('Rs 290.00',),
                                      ),
                                      const Padding(padding: EdgeInsets.symmetric(horizontal: 19),
                                          child: Text('Nashta',style: TextStyle(color: Colors.black38),))
                                    ],)

                              ],
                            ),

                          ),

                        ],
                      ),
                    ),

                  ),
                  const SizedBox(height: 5,),
                  Container(color: Colors.white,
                    height: 90,width: double.infinity,
                    child: Column(
                      children: [
                        const Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('SubTotal',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                            ),
                            Spacer(),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('Rs 320',style: TextStyle(fontWeight: FontWeight.bold),),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('Standard delivery'),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10,),
                              child: Container(color: Colors.pinkAccent[100],
                                child: const Text(' Free ',style: TextStyle(color: Colors.pink),),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),),
            Column(
              children: [
                Container(
                  color: Colors.white,
                  child:Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Row(children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Text('Total',style: TextStyle(fontWeight: FontWeight.bold),),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Text('(incl. VAT)',style: TextStyle(color: Colors.black38,fontSize: 14),),
                        ),
                        Spacer(),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Text('Rs 689.99',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                        ),
                      ]),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text('See price breakdown',style: TextStyle(color: Colors.pink[400]),),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 10),
                        child: SizedBox(height: 40,width: 300,
                          child: TextButton(onPressed: (){
                            Get.to(MyCheckoutPage(title: 'MyCheckoutPage'));
                          },
                              style: TextButton.styleFrom(
                                foregroundColor: Colors.white,
                                backgroundColor: Colors.pink[400],

                              ), child: const Text('Confirm payment and address')),
                        ),
                      )
                    ],
                  ),

                )
              ],
            )
          ],
        )
    );
  }
}

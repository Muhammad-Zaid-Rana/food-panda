import 'package:flutter/material.dart';
import 'package:food_panda/m6_cart_page.dart';
import 'package:food_panda/m8_payment_page.dart';
import 'package:get/get.dart';

class MyCheckoutPage extends StatefulWidget{
  const MyCheckoutPage ({super.key, required this.title});
  final String title;
  @override
  State<MyCheckoutPage> createState() =>  _MyCheckoutPage();
}
class _MyCheckoutPage extends State<MyCheckoutPage>{
  bool isSwitched=false;
  @override
  Widget build (BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading:  IconButton(onPressed: (){
          Get.off(const MyCartPage(title: 'MyCartPage'));
        },icon: const Icon(Icons.close),color: Colors.pink[400],),
        actions: const[
          Row(
            children: [
              Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Checkout',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,)),
                  Text('Rubbani Rewari Nashta'),
                ],
              ),
              SizedBox(width: 150,)
            ],
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(height: 5,width: 35,
                        color: Colors.pink[400],
                      ),
                      Container(height: 30,width: 30,
                        decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.pink[400]),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                          child: Text('1'),
                        ),
                      ),
                      Container(
                        height: 5,width: 100,
                        color: Colors.pink[400],
                      ),
                      Container(
                        height: 30,width: 30,
                        decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.pink[400]),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                          child: Text('2'),
                        ),
                      ),
                      Container(
                        height: 5,width: 100,
                        color:Colors.pink[400] ,
                      ),
                      Container(
                        height: 30,width: 30,
                        decoration:  BoxDecoration(shape: BoxShape.circle,color: Colors.pink[400]),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                          child: Text('3'),
                        ),
                      ),
                      Container(
                        height: 5,width: 35,
                        color: Colors.grey,
                      )
                    ],
                  ),
                  const Row(
                    children: [
                      SizedBox(width: 24,),
                      Text('Menue',style: TextStyle(color: Colors.black38),),
                      SizedBox(width: 100,),
                      Text('Cart',style: TextStyle(color: Colors.black38),),
                      SizedBox(width: 90,),
                      Text('Checkout',style: TextStyle(color: Colors.black38),)
                    ],
                  ),
                  Card(color: Colors.white,
                    child: Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                              child: Icon(Icons.location_on_outlined,color: Colors.pink[400],),
                            ),
                            const Text('Delivery address',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                            const Spacer(),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10),
                              child: Icon(Icons.edit,color: Colors.pink[400],),
                            )
                          ],
                        ),
                        Image.asset('assets/images/map2.jpg',width: 500,height: 110,),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                          child: Text('Khan International Textiles \n Multan'),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: TextField(
                            decoration: InputDecoration(
                                hintText: 'Note to rider - e.g. landmarks',
                                hintStyle: TextStyle(color: Colors.grey),
                                labelText: 'Delivery Instructions/Alternate phone number',
                                floatingLabelBehavior: FloatingLabelBehavior.always,
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.black38,width: 1)
                                )
                            ),
                          ),
                        ),

                        const Divider(),
                        Row(
                          children: [
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                              child: Text('Leave at the door',style: TextStyle(fontWeight: FontWeight.bold),),
                            ),
                            const Spacer(),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10),
                              child: Switch(value: isSwitched, onChanged: (value){
                                setState(() {
                                  isSwitched=value;
                                });
                              },
                                activeColor: Colors.pink[400],
                                inactiveTrackColor: Colors.white ,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Card(color: Colors.white,
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Delivery options',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(onTap: (){},
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(width: 1,color: Colors.grey)
                              ),
                              child: const Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                                    child: Text('Standard',style: TextStyle(fontWeight:FontWeight.bold),),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                                    child: Text('50 - 65 mins',style: TextStyle(color: Colors.grey),),
                                  ),
                                  Spacer(),
                                  Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                                    child: Text('Free',style: TextStyle(color: Colors.grey),),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        InkWell(onTap: (){},
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(border: Border.all(width: 1,color: Colors.grey),
                              ),
                              child: const Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                                    child: Text('Priority',style: TextStyle(fontWeight: FontWeight.bold),),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                                    child: Text('45 - 55 mins',style: TextStyle(color: Colors.grey),),
                                  ),
                                  Spacer(),
                                  Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                                    child: Text('Rs. 50.0',style: TextStyle(color: Colors.grey),),
                                  )
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Card(color: Colors.white,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                              child: Icon(Icons.payment,color: Colors.pink[400],),
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                              child: Text('Payment Method',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                            )
                          ],
                        ),
                        InkWell(onTap: (){},
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                                child: Icon(Icons.add,color: Colors.pink[400],),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                                child: Text('Add a payment method',style: TextStyle(color: Colors.pink[400]),),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Card(color: Colors.white,
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                              child: Icon(Icons.receipt,color: Colors.pink[400],),
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                              child: Text('Order Summary',style: TextStyle(fontWeight: FontWeight.bold),),
                            ),
                          ],
                        ),
                        const Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                                child: Text('Nashta'),
                              ),
                            ),
                            Spacer(),
                            Text('Rs. 290')
                          ],
                        ),
                        const Divider(),
                        const Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 3),
                              child: Text('Subtotal',style: TextStyle(color: Colors.grey),),
                            ),
                            Spacer(),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 3),
                              child: Text('Rs. 290',style: TextStyle(color: Colors.grey),),
                            )
                          ],
                        ),
                        const Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 3),
                              child: Text('Standard delivery',style: TextStyle(color: Colors.grey),),
                            ),
                            Spacer(),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 3),
                              child: Text('Free',style: TextStyle(color: Colors.grey),),
                            )
                          ],
                        ),
                        const Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 3),
                              child: Text('Platform Fee',style: TextStyle(color: Colors.grey),),
                            ),
                            Spacer(),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 3),
                              child: Text('Rs.9.99',style: TextStyle(color:Colors.grey),),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                    child: Row(
                      children: [
                        const Text('By completing this order,I agree to all',style: TextStyle(fontSize: 12),),
                        Text(' terms & conditions',style: TextStyle(fontSize: 12,color: Colors.pink[400]),)
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            color: Colors.white,
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                      child: Text('Total',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    ),
                    Text('(incl.Vat)'),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                      child: Text('Rs. 300',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text('See price breakdown',style: TextStyle(color: Colors.pink[400]),),
                ),
                const SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 10),
                  child: SizedBox(height: 40,width: 300,
                      child: TextButton(onPressed: (){
                        Get.to(const MyPaymentPage(title: 'MyPaymentPage'));
                      },
                        style: TextButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor: Colors.pink[400],
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                            )
                        ), child: const Text('Confirm address'),
                      )),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

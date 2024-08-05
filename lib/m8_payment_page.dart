import 'package:flutter/material.dart';
import 'package:food_panda/m7_checkout_page.dart';
import 'package:get/get.dart';
class MyPaymentPage extends StatefulWidget{
  const MyPaymentPage ({super.key,required this.title});
  final String title;
  @override
  State<MyPaymentPage> createState() =>_MyPaymentPage();
}
class  _MyPaymentPage extends State<MyPaymentPage>{

  @override
  Widget build (BuildContext context){
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Get.off(const MyCheckoutPage(title: 'MyCheckoutPage'));
        }, icon: Icon(Icons.arrow_back,color: Colors.pink[400],)),
        title: const Text('Select a payment method',style: TextStyle(fontWeight: FontWeight.bold),),
      ),
      body:  Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  InkWell(onTap: (){},
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(color: Colors.white,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                              child: Image.asset('assets/images/cash.jpg',height: 40,width: 60,),
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(vertical: 10),
                              child: Text('Cash',style: TextStyle(fontWeight: FontWeight.bold),),
                            ),
                            const Spacer(),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                              child: Container(
                                height: 20,width: 20,
                                decoration: BoxDecoration(shape: BoxShape.circle,border: Border.all(width: 2,color: Colors.pink)),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(onTap: (){},
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(color: Colors.white,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                              child: Image.asset('assets/images/visa.jpg',height: 40,width: 60,),
                            ),
                            Column(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                                  child: Text('Credit or Debit Card',style: TextStyle(fontWeight: FontWeight.bold),),
                                ),
                                Row(
                                  children: [
                                    for(var i=0;i<=1;i++)
                                      Image.asset('assets/images/visa.jpg',height: 30,width: 40,)
                                  ],
                                )
                              ],
                            ),
                            const Spacer(),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal:3,vertical: 10),
                              child: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios,color: Colors.pink[400],)),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(onTap: (){},
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(color: Colors.white,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                              child: Image.asset('assets/images/jazz cash.png',height: 40,width: 60,),
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                              child: Text('Jazz Cash',style: TextStyle(fontWeight: FontWeight.bold),),
                            ),
                            const Spacer(),
                            Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 3,vertical: 10),
                                child: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios,color: Colors.pink[400],))
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(onTap: (){},
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(color: Colors.white,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                              child: Image.asset('assets/images/easy paisa.jpg',height: 40,width: 60,),
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(vertical: 10),
                              child: Text('easypaisa',style: TextStyle(fontWeight: FontWeight.bold),),
                            ),
                            const Spacer(),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                              child: Container(
                                height: 20,width: 20,
                                decoration: BoxDecoration(shape: BoxShape.circle,border: Border.all(width: 2,color: Colors.pink)),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 40,width: 330,
              child: TextButton(onPressed: (){},
                  style: TextButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.pink[400],
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                  ), child:const Text('Confirm'))),
          const SizedBox(height: 20,)
        ],
      ),
    );
  }
}
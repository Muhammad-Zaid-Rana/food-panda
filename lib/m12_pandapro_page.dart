import 'package:flutter/material.dart';
import 'package:food_panda/m13_pandapro_benefit_page.dart';
import 'package:food_panda/m3_home_page.dart';
import 'package:get/get.dart';

class MyPandaPro extends StatefulWidget{
  const MyPandaPro ({super.key,required this.title});
  final String title;
  @override
  State <MyPandaPro> createState() => _MyPandaPro();
}
class _MyPandaPro extends State<MyPandaPro> {
  int _isSelected=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(onPressed: (){Get.off(const MyHomePage(title: ''));},icon: const Icon(Icons.close),),
          title:  const Text('Explore exclusive perks with pandapro')
      ),
      body: Column(
        children: [
        Expanded(
          child: SingleChildScrollView(
            child: Card(
              color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('panda pro',style: TextStyle(color: Colors.pink,fontWeight: FontWeight.bold),),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    const Text('Explore exclusive \nperks with \npandapro',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                    const Spacer(),
                    Image.asset('assets/images/pandapro.jpg'),
                  ],
                ),
              ),
              const Text('The only plan you need for free \ndeliveries,discounts,and more!',style: TextStyle(color: Colors.grey),),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(borderRadius: BorderRadius.circular(15),
                  child: Container(
                    color: Colors.pink[50],
                    child:const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(Icons.discount_outlined,color: Colors.pink,),
                          Column(
                            children: [
                              Text('Use code PROCLUB100 to get pandapro\n Free for 1-month!',style: TextStyle(color: Colors.pink),),
                              Text('For new pandapro subscribers only. Card \npayments only.',style: TextStyle(color: Colors.pink),)
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const Text('Monthly perks'),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Expanded(
                  child: ListView.builder(
                    itemCount: 2,
                    physics: const ClampingScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (BuildContext,index){
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListTile(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12),side: const BorderSide(width: 1,color: Colors.grey)),
                          leading: Icon(perks[index]['icon'],color: Colors.pink,),
                          title: Text(perks[index]['title']),
                          subtitle: Text(perks[index]['subtitle'],maxLines: 1,overflow: TextOverflow.ellipsis,style: const TextStyle(color: Colors.grey),),
                        ),
                      );
                    },
                  ),
                ),
              ),
              const Text('Surprise perks',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12),side: const BorderSide(width: 1,color: Colors.grey)),
                  leading: const Icon(Icons.card_giftcard_outlined,color: Colors.pink,),
                  title: const Text('Exclusive deals on restaurants,pickup and more',maxLines: 1,overflow: TextOverflow.ellipsis,),
                  subtitle: const Text('Look out for exclusive discounts!'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(height: 40,width: 390,
                  child: TextButton(onPressed: (){Get.to(MyBenefitScreen(title: ''));},
                      style: TextButton.styleFrom(side: const BorderSide(width:1,color: Colors.grey),foregroundColor: Colors.black),
                      child: const Text('See benefits details',style: TextStyle(fontWeight: FontWeight.w800),)),
                ),
              ),
              Row(
                children: [
                  SizedBox(
                    height: 70,width: 250,
                    child: Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),color: Colors.pink),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child:  Text('Save upto to Rs.25,00 and more!',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),maxLines: 2,),
                      ),
                    ),
                  ),
                  Image.asset('assets/images/app_logo.png',width: 80,),
                ],
              ),
              Row(
                children: [
                  const SizedBox(width: 70,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(height: 40,width: 5,color: Colors.pink[100],),
                  ),
                  const Column(
                    children: [
                      Text('No hidden charges'),
                      Text('Unsubscribe anytime')
                    ],
                  )
                ],
              ),
              const Text('Frequently Asked Questions',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w900),),
              ListView.builder(
                shrinkWrap: true,
                physics: const ClampingScrollPhysics(),
                itemCount: questions.length,
                itemBuilder: (BuildContext,index){
                 return Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Card(color: Colors.white,
                     child: ExpansionTile(
                       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12),side: const BorderSide(width: 1,color: Colors.grey)),
                       backgroundColor: Colors.white,
                       title: Text(questions[index]['title']) ,
                       children: [
                         Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Text(questions[index]['text']),
                         ),
                       ],
                     ),
                   ),
                 );
                }
              ),
              const Center(child: Text('See all FAQ\'s',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w600),)),
              const Divider(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: const Text('Subscription automatically renews at the end of your plan.Check out the terms and conditions'),
              )
            ],
                      ),
                    ),
                  ),
    ),
    ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                const Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Starting from'),
                    Text('Rs.166.58/mo.',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 20),)
                  ],
                ),
                // SizedBox(width: 60),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(width: 180,height: 40,
                    child: TextButton(onPressed: (){
                      _showBottomSheet(context);
                    },style: TextButton.styleFrom(
                      foregroundColor: Colors.white,backgroundColor: Colors.pink,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                    ),
                        child: const Text('Select plan',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
  _showBottomSheet(BuildContext context){
    showModalBottomSheet(context: context,
        builder: (context)=> SizedBox(
          height: 320,width: double.infinity,
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(child: Container(width: 40,height: 5,color: Colors.grey[400],)),
                SizedBox(height: 20,),
                Text('Select plan',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: Colors.black87),),
                SizedBox(height: 25),
                StatefulBuilder(
                  builder: (context, setState){
                    return Row(
                        children:
                        List.generate(plan.length,(index){
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 7,vertical: 10),
                            child: GestureDetector(
                              onTap: (){
                                setState(() {
                                  _isSelected=index;
                                });
                              },

                              child: Container(
                                height: 140,width: 100,
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),border: Border.all(color:_isSelected==index ?Colors.purple:Colors.grey,width: 1,)),
                                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 10,),
                                    Row(
                                      children: [
                                        ClipRRect(
                                          borderRadius:BorderRadius.only(topRight: Radius.circular(12),bottomRight: Radius.circular(12)),
                                          child: Container(height: 20,width: 70,
                                            color: Colors.purple[100],
                                            child: Text(plan[index]['text1'],style: TextStyle(color: Colors.purple),),
                                          ),
                                        ),
                                        Container(child: _isSelected==index
                                            ? Icon(Icons.check, color: Colors.blue)
                                            : null,),
                                      ],
                                    ),
                                    SizedBox(height: 8),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 6),
                                      child: Row(
                                        children: [
                                          Wrap(
                                              children: [
                                                Text(plan[index]['text2'],style: TextStyle(fontSize: 12),),
                                                Text(plan[index]['text3'],style: TextStyle(fontSize: 20,color: Colors.black87,fontWeight: FontWeight.bold),),])
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 6),
                                      child: Wrap(
                                        children: [
                                          Text(plan[index]['text4'],overflow: TextOverflow.ellipsis,)
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          );
                        })
                    );},
                ),
                Divider(),
                SizedBox(height: 5),
                SizedBox(height: 38,width: 400,
                  child: TextButton(onPressed: (){}, child: Text('SUBSCRIBE NOW',style: TextStyle(fontWeight: FontWeight.bold),),
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.pink,
                    ),
                  ),
                ),
                SizedBox(height: 5,),
              ],),
          ),
        ));
  }
}
List<Map<String,dynamic>>perks=[
  {
    'title':'Unlimited Free deliveries',
    'subtitle':'free deliveries on your food and grocery orders',
    'icon':Icons.delivery_dining,
  },
  {
    'title':'Up to 50% off restaurants',
    'subtitle':'Valid for selected restaurants',
    'icon':Icons.discount_outlined,
  }
];
List<Map<String,dynamic>>questions=[
  {
    'title':'What is pandapro?',
    'text':'panda pro is a subscription plan that offers exclusive deals like free delivery and discounts on food,groceries,and more'
  },
  {
    'title':'How do I use my pandapro perks?',
    'text':'Once you\'re a pro,your perks are added to your account! Free delivery is automatically applied,and other vouchers have to be a selected at checkout. \n To check what perks you have,go to the side navigation menu and tap \"Subscriptions.\" '
  },
  {
    'title':'When can I enjoy my pandapro perks?',
    'text':'To enjoy your pandapro perks,make sure you meet the minimum spend where required. It\'s simple!'
  },
  {
    'title':'What are surprise perks?',
    'text':'Surprise perks are benefits that pro subscribers may receive on an ad hoc basis. They are subject to change and may expire if unused '
  }
];
List<Map<String,dynamic>>plan=[
  {
    'text1':'1 month',
    'text2':'Rs.',
    'text3':'249.00',
    'text4':'/mo \nRs.249.00\n billed every month'
  },
  {
    'text1':'6 months',
    'text2':'Rs.',
    'text3':'199.83',
    'text4':'/mo \nRs.1199.00 \n billed every 6 months'
  },
  {
    'text1':'12 months',
    'text2':'Rs.',
    'text3':'249.00',
    'text4':'/mo \nRs.249.00 \n billed every 12 months'
  }
];
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/widgets.dart';
import 'package:food_panda/m12_pandapro_page.dart';
import 'package:get/get.dart';
class MyBenefitScreen extends StatefulWidget{
  const MyBenefitScreen ({super.key,required this.title});
  final String title;
  @override
  State<MyBenefitScreen> createState() => _MYBenefitScreen();
}
class _MYBenefitScreen extends State<MyBenefitScreen>{
int _currentPage = 0;
int _isSelected = 0;
  @override
  Widget build (BuildContext context){
    return  Scaffold(backgroundColor: Colors.white,
      body: Column(
        children: [
          Column(
            children: [
              Container(
                height: 160,width:double.infinity,
                color: Colors.deepPurple,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 30),
                      Container(width:40,height: 40,
                          decoration: const BoxDecoration(shape: BoxShape.circle,color: Colors.white),
                          child: IconButton(onPressed: (){Get.off(MyPandaPro(title: ''));}
                              , icon: const Icon(Icons.close))),
                      const SizedBox(height: 15),
                      const Text('See benefit details',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w900,color: Colors.white),)
                    ],
                  ),
                ),
              ),
              Container(height: 580,
                color: Colors.white,
                child:Column(
                  children: [
                    buildCarouselIndicator(),
                    CarouselSlider.builder(
                    itemCount: items.length,
                      itemBuilder: (BuildContext context, int index, int realIndex) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          children: [
                            Text(items[index]['text1'],style: TextStyle(fontWeight: FontWeight.w900,fontSize:20,),),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ClipRRect(borderRadius: BorderRadius.circular(12),
                                child: Container(color: Colors.blue[50],height: 20,width: 78,
                                    child: Center(child: Text(items[index]['text2'],style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue),))),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(items[index]['image'],height: 70,width: 200,),
                            ),
                            Text(items[index]['text3'],),
                            SizedBox(height: 10,),
                            Row(
                              children: [
                                Text(items[index]['text4'],style: TextStyle(color: Colors.pink,fontWeight: FontWeight.w900)),
                              ],
                            ),

                          ],
                        ),
                      );
                      },
                      options: CarouselOptions(
                        autoPlay: false,
                       height: 560,
                        enlargeCenterPage: true,
                        onPageChanged: (value,_){
                         setState(() {
                           _currentPage=value;
                         });
                        }
                        ),
                      ),
                  ],
                ),
                )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                const Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Starting from'),
                    Text('Rs.166.58/mo.',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 20),)
                  ],
                ),
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
  buildCarouselIndicator(){
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(items.length, (index) {
        return Container(
          width: 10,
          height: 10,
          margin: EdgeInsets.symmetric(horizontal: 5),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: _currentPage == index ? Colors.black54 : Colors.grey,
          ),
        );
      })),
    );
  }
}
List <Map<String,dynamic>>items=[
  {
    'text1':'Unlimited free deliveries',
    'text2':'Unlimited',
    'image':'assets/images/benefit_screen1.jpg',
    'text3':'Valid with min. order of Rs. 599 for restaurants and Rs. 999 for shops & pandamart.Discount will automatically be applied.',
    'text4':'Explore your choices'
  },
  {
    'text1':'Minimum 50% off on delivery',
    'text2':'Unlimited',
    'image':'assets/images/benefit_screen2.jpg',
    'text3':'Enjoy up to 50% off 10,000+ restaurants! \n More info \n -With varying minimum order value per \nrestaurant \n -Not valid with pandabox discounts',
    'text4':'Explore your choices'
  },
  {
    'text1':'Exclusive deals on pick-up,groceries,and more',
    'text2':'Unlimited',
    'image':'assets/images/benefit_screen3.jpg',
    'text3':'Look out for surprise deals every month!',
    'text4':'Explore your choices'
  },
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
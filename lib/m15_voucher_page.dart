import 'package:flutter/material.dart';
import 'package:food_panda/m3_home_page.dart';
import 'package:get/get.dart';
class MyVoucherPage extends StatefulWidget{
  const MyVoucherPage ({super.key,required this.title});
  final String title;
  @override
  State<MyVoucherPage> createState() => _MyOffPage();
}
class _MyOffPage extends State<MyVoucherPage> {
  int index=0;
  int ?selected;
  bool isSelected=false;
  bool  color=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(onPressed: (){
          Get.off(const MyHomePage(title: ''));
        }, icon: const Icon(Icons.arrow_back)),
        title: const Text('Vouchers & Offers',style: TextStyle(fontWeight: FontWeight.bold),),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 10),
           Container(
             height: 420,
             color: Colors.white,
             child:Column(
               children: [
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Container(
                     decoration: BoxDecoration(shape: BoxShape.rectangle,borderRadius: BorderRadius.circular(8),color: Colors.white,border: Border.all(width: 1,color: Colors.grey)),
                     child: Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Row(
                         children: [
                           const SizedBox(width: 20),
                           const Column(
                             children: [
                               Text('Rs.0.00',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey,fontSize: 20),),
                               Text('Saved this month',style: TextStyle(color: Colors.grey),)
                             ],
                           ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 2,height: 50,color: Colors.grey,
                            ),
                          ),
                           const Icon(Icons.local_activity_outlined,color: Colors.grey,),
                           const Text(' Add a Voucher',style: TextStyle(color: Colors.black87,fontWeight: FontWeight.bold,fontSize: 20,),)
                         ],
                       ),
                     ),
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 10),
                   child: Row(
                     children: [
                       GestureDetector(onTap: (){
                         setState(() {
                           isSelected=!isSelected;
                         });
                       },
                         child: InkWell(onTap: (){
                           _showBottomSheet(context, index);
                         },
                           child: Container(
                             decoration: BoxDecoration(border: Border.all(width: 1,color: Colors.grey),borderRadius: BorderRadius.circular(12),color:isSelected?Colors.blueGrey:Colors.white,),
                             child: Center(
                               child: Padding(
                                 padding: const EdgeInsets.all(4.0),
                                 child: Row(
                                   children: [
                                     Text('Sort',style: TextStyle(color:isSelected? Colors.white:Colors.black,fontWeight: FontWeight.bold),),
                                     const Icon(Icons.keyboard_arrow_down,color: Colors.grey,)
                                   ],
                                 ),
                               ),
                             ),
                           ),
                         ),
                       ),
                       Row(
                         children:
                         List.generate(container.length, (index){
                           return Padding(
                             padding: const EdgeInsets.all(12),
                             child: InkWell(onTap: (){
                               setState(() {
                                 selected=index;
                               });
                             },
                               child: Container(
                                 decoration: BoxDecoration(border: Border.all(width: 1,color: Colors.grey),borderRadius: BorderRadius.circular(12),color:selected==index?Colors.blueGrey:Colors.white,),
                                 child: Center(
                                   child: Padding(
                                     padding: const EdgeInsets.all(4.0),
                                     child: Text(container[index]['text'],style: TextStyle(color:selected==index? Colors.white:Colors.black,fontWeight: FontWeight.bold),),
                                   ),
                                 ),
                               ),
                             ),
                           );
                         }),
                       ),
                     ],
                   ),
                 ),
                 Expanded(
                   child: ListView.builder(
                       physics:const NeverScrollableScrollPhysics(),
                   itemCount:offer.length ,itemBuilder: ( context,index){
                     return Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Container(
                         decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),border: Border.all(width: 1,color: Colors.grey),color: Colors.white),
                         child: Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Row(
                             children: [
                               Image.asset(offer[index]['Image'],width: 40,),
                               Column(crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   Text(offer[index]['text1'],style: const TextStyle(color: Colors.grey),),
                                   Padding(
                                     padding: const EdgeInsets.all(4.0),
                                     child: Row(
                                       children: [
                                         Text(offer[index]['text2'],style: const TextStyle(fontWeight: FontWeight.bold),),
                                         const SizedBox(width: 5),
                                         Icon(offer[index]['Icon'],color: Colors.grey,),
                                         // SizedBox(width: 5),
                                         Text(offer[index]['text3']),
                                         const SizedBox(width: 5),
                                         Container(
                                           decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),border: Border.all(width: 1,color:Colors.grey),color: Colors.pink[100]),
                                           child:Padding(
                                             padding: const EdgeInsets.all(4.0),
                                             child: Text(offer[index]['text4'],style: const TextStyle(color: Colors.pink)),
                                           ),
                                         )
                                       ],
                                     ),
                                   ),
                                     Row(
                                       children: [
                                         for(int i=0;i<=20;i++)
                                         Container(margin: const EdgeInsets.all(4.0),
                                           width: 5,height: 2,color: Colors.black12,
                                         ),
                                       ],
                                     ),
                                   Row(
                                     children: [

                                       Container(
                                         decoration: BoxDecoration(border: Border.all(width: 1,color: Colors.grey),borderRadius: BorderRadius.circular(12),color: Colors.white30),
                                         child: Padding(
                                           padding: const EdgeInsets.all(4.0),
                                           child: Row(
                                             children: [
                                               Text(offer[index]['text5'],style: const TextStyle(color: Colors.grey),),
                                               const SizedBox(width: 5),
                                               SizedBox(width: 100,
                                                   child: Text(offer[index]['text6'],overflow: TextOverflow.ellipsis,style: const TextStyle(color: Colors.pink),))
                                             ],
                                           ),
                                         ),
                                       ),
                                       const SizedBox(width: 6),
                                       Text(offer[index]['text7'],style: const TextStyle(fontWeight: FontWeight.bold),)
                                     ],
                                   ),

                                 ],
                               ),
                             ],
                           ),
                         ),
                       ),
                     );
                   }),
                 ),
               ],
             ) ,
           ),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Container(
               color: Colors.white,
               child: Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                   const Text('Discover more restaurants deals',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
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
                     const Text('Discover more shopping deals',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
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
                   ],
                 ),
               ),
             ),
           ),
        
          ],
        ),
      ),
    );
  }
  _showBottomSheet(BuildContext context,index){
   showModalBottomSheet(context: context, builder: (context)=>
   SizedBox(height: 250,child: Padding(
       padding: const EdgeInsets.all(8.0),
       child: Column(
         children: [
           const SizedBox(height: 30),
           const Padding(
             padding: EdgeInsets.all(8.0),
             child: Row(
               children: [
                 Text('Sort by',style: TextStyle(fontSize: 30,fontWeight: FontWeight.w900),),
                 Spacer(),
                 Text('Clear',style: TextStyle(fontWeight: FontWeight.bold)),
               ],
             ),
           ),
           Column(
             children: List.generate(sheet.length,(index){
               return  Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: InkWell(onTap: (){
                   setState(() {
                     color=!color;
                   });
                 },
                   child: Row(
                     children: [
                       Text(sheet[index]['text']),
                       const Spacer(),
                       Container(width: 30,height: 30,
                         decoration: BoxDecoration(shape: BoxShape.circle,border:Border.all(width: 1,color:Colors.grey),color:color?Colors.lightBlueAccent:Colors.white30),
                       )
                     ],
                   ),
                 ),
               );
             }),
           ),

         ],
       ),
     ),
   ));
  }
}
List<Map<String,dynamic>>container=[
  {
    'text':'Restaurants'
  },
  {
    'text':'Shops'
  }
];
List<Map<String,dynamic>>offer=[
  {
    'Image':'assets/images/discount.png',
    'text1':'Try pick-up with 20% off',
    'text2':'20%',
    'Icon':Icons.info_outline,
    'text3':'VLAPUQAR',
    'text4':'New',
    'text5':'Min.spend Rs.700',
    'text6':'Expires on 20 December',
    'text7':'Details',
  },
  {
    'Image':'assets/images/discount.png',
    'text1':'Get Rs.250 off your first delivery',
    'text2':'Rs.250.00',
    'Icon':Icons.info_outline,
    'text3':'VT2H0QR6',
    'text4':'New',
    'text5':'Min.spend Rs.500',
    'text6':'Expires on 20 December',
    'text7':'Details',
  },
];
List<Map<String,dynamic>>sheet=[
  {
    'text':'Latest (default)',
  },
  {
    'text':'Pehlay expire hone wale'
  },
  {
    'text':'Kam se kam minimum order value'
  }
];
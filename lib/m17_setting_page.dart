import 'package:flutter/material.dart';
import 'package:food_panda/m3_home_page.dart';
import 'package:get/get.dart';
class MySettingPage extends StatefulWidget{
  const MySettingPage ({super.key,required this.title});
  final String title;
  @override
  State<MySettingPage> createState() =>_MySettingPage();
}
class _MySettingPage extends State<MySettingPage>{
  Set<int> _selectedIndices = {};
  @override
  Widget build (BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(onPressed: (){
          Get.off(const MyHomePage(title: ''));
        },icon: const Icon(Icons.arrow_back),),
        title: const Text('Settings'),
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: SizedBox(height: 120,
              child: Card(
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text('Language',style: TextStyle(color: Colors.grey),),
                            Spacer(),
                            Text('Edit',selectionColor: Colors.pink,),
                          ],
                        ),
                      ),
                      Text('English',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 20),)
                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(itemCount: card.length,itemBuilder:(context,index) {
              return Card(
                color: Colors.white,
                child: Row(
                  children: [
                    Checkbox(value: _selectedIndices.contains(index),
                        activeColor: Colors.black,
                        onChanged:(bool? isChecked){
                          setState(() {
                            if (isChecked == true) {
                              _selectedIndices.add(index);
                            } else {
                              _selectedIndices.remove(index);
                            }
                          });
                        } ),
                    Text(card[index]['text'],selectionColor: Colors.grey,)
                  ],
                ),
              );
            }),
          )
        ],
      ),
    );
  }
}
List<Map<String,dynamic>>card=[
  {
    'text':'Receive push notifications',
  },
  {
    'text':'Receive offers by email'
  },
  {
    'text':'Show floating icon'
  }
];
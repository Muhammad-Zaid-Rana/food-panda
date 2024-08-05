import 'package:flutter/material.dart';
import 'm3_home_page.dart';
import 'm2_continue_page.dart';


class MySplashPage extends StatefulWidget {
  const MySplashPage({super.key, required this.title});

  final String title;

  @override

  State<MySplashPage> createState() => _MySplashPageState();
}
class _MySplashPageState extends State<MySplashPage> {
  @override
  void initState(){
    super.initState();
    _navigatetoContinuePage();
  }
  _navigatetoContinuePage()async{
    await Future.delayed(const Duration(seconds: 3),(){});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const MyContinuePage(title: 'MyContinuePage')));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.pink,
        body:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/app_logo.png')
            ],
          ),
        )


    );
  }
}



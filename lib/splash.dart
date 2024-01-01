import 'package:flutter/material.dart';
import 'package:number_facts/homepage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    goToHome();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
               Image.asset('lib/assets/bg.png',height: 90,),
          ],
        ),
      ),
    );
  }

    Future<void> goToHome() async{
    await Future.delayed(const Duration(seconds: 2));
    // ignore: use_build_context_synchronously
    Navigator.of(context).pushReplacement( MaterialPageRoute(builder:(ctx)=>const HomeScreen()));
  }
}
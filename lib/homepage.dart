
import 'package:flutter/material.dart';
import 'package:number_facts/apis.dart';

class HomeScreen extends StatefulWidget {
   const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final numberController = TextEditingController();

  String _resultText = 'Type number';

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 40),
                Image.asset('lib/assets/bg.png',height: 90,),
                const SizedBox(height: 50),
                TextFormField(
                  controller: numberController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25)),
                      hintText: "Enter a number"
                  ),
                ),
                const SizedBox(height: 20,),
                ElevatedButton(
                  onPressed: ()async{
                    final num = numberController.text;
                   final result = await  getNumberFact(number: num);
                  //  print(result.text);
                   setState(() {
                     _resultText = result.text??"Oops! Not found";
                   });
                  }, 
                  child:const Icon(Icons.arrow_circle_right_outlined)),
                  const SizedBox(height: 30,),
                  Text(_resultText,style: const TextStyle(fontSize: 25),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
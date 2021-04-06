import 'package:flutter/material.dart';
import 'package:ui_challenges/ui_page_1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: SafeArea(
       child: Center(
         child: Column(
           children: [
             TextButton(onPressed: (){
               Navigator.of(context).push(MaterialPageRoute(builder: (context) => UIPage1(),));
             }, child: Text('GO UI PAGE1'))
           ],
         ),
       ),
     ),
   );
  }

}



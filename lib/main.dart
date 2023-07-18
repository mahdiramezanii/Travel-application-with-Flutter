import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    var size=MediaQuery.of(context).size;
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    home:Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              color: Colors.red,
              width: double.infinity ,
              height: size.height/1.8,
              child:Stack(

                children: [

                  Container(

                  
                   decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage(""),
                        fit: BoxFit.cover
                        ),
                        
                   )
                    
                    
                  ),

                //head icon
                Positioned(
                  top: 0,
                  left: 5,
                  right: 5,
                  child: Padding(
                  padding: const EdgeInsets.fromLTRB(10,20,10,0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      
                    Container(
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromARGB(93, 243, 217, 217)
                      ),
                      child: Icon(CupertinoIcons.arrow_left),
                    ),
                      
                    Container(
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromARGB(93, 243, 217, 217)
                      ),
                      child: Icon(CupertinoIcons.heart),
                    ),
                    
                  ],),
                              ),
                ),


                ],
              )
            ),
      
            Expanded(
              child: Container(
                color: Colors.yellow,
                width: double.infinity,
                
              ),
            )
          ],
        ),
      ),
    )
    );
  }


}


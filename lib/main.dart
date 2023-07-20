import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/models/models.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget{

 

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
   var _indexList=0;
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
              color: const Color.fromARGB(255, 221, 221, 221),
              width: double.infinity ,
              height: size.height/1.7,
              child:Stack(

                children: [


                  Container(

                    height: size.height/2.1,
                    width: double.infinity,

                   decoration: BoxDecoration(
                        borderRadius:BorderRadius.only(bottomLeft:Radius.circular(55),
                        bottomRight: Radius.circular(55)) ,
                        image: DecorationImage(image: AssetImage(travel_list[_indexList].image!),
                        fit: BoxFit.cover,
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
                      child: const Icon(CupertinoIcons.arrow_left),
                    ),
                      
                    Container(
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromARGB(93, 243, 217, 217)
                      ),
                      child: const Icon(CupertinoIcons.heart),
                    ),
                    
                  ],),
                              ),
                ),

                Positioned(
                  top:250,
                  left:30,
                  child: Text(travel_list[_indexList].city!,style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                    ),),
                ),

                
                  Positioned(
                    top:80,
                    
                    right: 0,
                    child: SizedBox(
                  
                      height: 300,
                      width: 80,
                      child: ListView.builder(
                        itemCount: travel_list.length,
                        itemBuilder: (BuildContext context, int index) {
                          
                        return Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0,8,0,0),
                              child: InkWell(
                                              
                               onTap: (){

                                setState(() {
                                  _indexList=index;
                                  
                                });
                               },
                                child:AnimatedContainer(
                            
                                  height: _indexList == index ? 85:75,
                                  width: _indexList == index ? 85:75,
                                
                                    duration: Duration(milliseconds: 50),
                                              
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(image: AssetImage(travel_list[index].image!),
                                      fit: BoxFit.fill,
                                      ),
                                      
                                      border: Border.all(width: 2,color: Colors.white)
                                    ),
                                              
                                    ),
                                    
                                              
                                
                              ),
                            ),
                          ],
                        );
                        
                      }),
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


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/models/models.dart';
import 'package:expandable_text/expandable_text.dart';

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
        child: SingleChildScrollView (
          child: Column(
            children: [
              Container(
                color: Color.fromARGB(255, 255, 252, 252),
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
                    top:210,
                    left:40,
                    child:Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      
                        Text(travel_list[_indexList].city!,style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold)),
                      SizedBox(height: 12,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
        
                      Icon(CupertinoIcons.placemark_fill,color: Colors.white,),
                      Text(travel_list[_indexList].city!,style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),),
                      ],)
                      ],
                    ) ,
                    
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
              
              Container(

                height: size.height,
                color: Color.fromARGB(255, 255, 255, 255),
                width: double.infinity,
        
                child: Stack(
                   children: [
        
                    Positioned(
                    top: 10,
                    left: 40,
                    right: 40,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
        
                      Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Container(
                        width: 90,
                        height: 90,
                        decoration:BoxDecoration(
                          color: Color.fromARGB(255, 246, 246, 246),
                          border: Border.all(width: 2,color: const Color.fromARGB(255, 172, 170, 170)),
                          borderRadius: BorderRadius.circular(30),
        
                          
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("Distance",style: TextStyle(
                            fontSize: 18),),
                            Text("${travel_list[_indexList].distance!} km ",style: TextStyle(color: const Color.fromARGB(255, 120, 202, 222)),)
                          ],
                        ),
                      ),
                      Container(
                        width: 90,
                        height: 90,
                        decoration:BoxDecoration(
                          color: Color.fromARGB(255, 246, 246, 246),
                          border: Border.all(width: 2,color: const Color.fromARGB(255, 172, 170, 170)),
                          borderRadius: BorderRadius.circular(30),
                        )
                       ,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("Temp",style: TextStyle(
                            fontSize: 18),),
                            Text("${travel_list[_indexList].temp!} km ",style: TextStyle(color: const Color.fromARGB(255, 120, 202, 222)),)
                          ],
                        ),
                      ),
                      Container(
                        width: 90,
                        height: 90,
                        decoration:BoxDecoration(
                          color: Color.fromARGB(255, 246, 246, 246),
                          border: Border.all(width: 2,color: const Color.fromARGB(255, 172, 170, 170)),
                          borderRadius: BorderRadius.circular(30),
                        )
                        ,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("Rating",style: TextStyle(
                            fontSize: 18),),
                            Text("${travel_list[_indexList].rating!}",style: TextStyle(color: const Color.fromARGB(255, 120, 202, 222)),)
                          ],
                        ),
                      ),
                    ],),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0,15,0,0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          
                        Text("Description",style:TextStyle(fontSize: 20)),
                        SizedBox(height: 10,),
                      Text("Test"),
                      ExpandableText("Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet", expandText: "show more",
                      collapseText: "show less",
                      )
                      
                      ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0,15,0,0),
                      child: Row(children: [
                    
                        Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          
                          Text("Total Price",style:TextStyle(fontSize: 18)),
                          SizedBox(height: 10,),
                          Text("\$ ${travel_list[_indexList].price!}",style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                          ),),
                        ],
                        ),
                        Positioned(
                          bottom: 400,
                          child: Icon(CupertinoIcons.play_circle_fill))
                      ],),
                    )
                    ],
                   
                    )
         
                  ),
        
                  
                   ],
        
                   
                ),
                
              )
            ],
          ),
        ),
      ),
    )
    );
  }
}


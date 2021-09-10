import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class Dashbord extends StatefulWidget {
  const Dashbord({ Key? key }) : super(key: key);

  @override
  _DashbordState createState() => _DashbordState();
}

class _DashbordState extends State<Dashbord> {

  final List <String> images =[

    "https://bit.ly/3twDHWg",
    "https://bit.ly/3hkzM9P",
    "https://bit.ly/3himsCW",
    "https://bit.ly/3E2qmtx",

  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Padding(padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
          child: Row(
            children: [
              Icon(Icons.notification_important, size: 30,),
          Icon(Icons.search, size: 30,)
            ],
          ),
          
          ),
      
        ],

      ),
      drawer: Drawer(),
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            Container(
              color: Colors.black,
              height: MediaQuery.of(context).size.height /2.3,
              child: Stack(
                children: [
                  
                  // Image(image: NetworkImage("https://images.unsplash.com/photo-1483721310020-03333e577078?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80",),fit: BoxFit.cover,height: double.infinity,width:double.infinity,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(padding: EdgeInsets.fromLTRB(15, 0, 0, 70),
                        child: Text("Welcome to \nthe Fitness",
                        style: TextStyle(
                          fontSize: 32,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                           shadows: <Shadow>[
      Shadow(
        offset: Offset(0.0, 3.3),
        blurRadius: 10.0,
        color: Color.fromARGB(255, 0, 0, 0),
      ),
      // Shadow(
      //   offset: Offset(10.0, 10.0),
      //   blurRadius: 8.0,
      //   color: Color.fromARGB(125, 0, 0, 255),
      // ),
    ],
                          ),
                        
                        ),
                      ),
                    ],
                  ),

                  SizedBox(
                    height: 10,
                  ),
                  
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(15, 0, 15, 40),
                        child: Divider(
                          thickness: 2,
                          indent: 3,
                          // height: MediaQuery.of(context).size.height / 1.5,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    
                    padding: const EdgeInsets.fromLTRB(15, 0, 0, 10),
                    child: Column(
                      
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [

                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text("Show offers for new members",
                                style: TextStyle(color: Colors.white,fontSize: 15),),
                                SizedBox(
                                  width: 5,
                                ),
                                Icon(Icons.arrow_right_alt,color: Colors.white,),
                                

                              ],
                            ),
                            Container(
                              child: Carousel(
                                images:images.map((item) => Container(
                                  child: Image.network(item,
                                  fit: BoxFit.cover,height: double.infinity,width:double.infinity,
                                  ),
                                )).toList(),
                              ) ,
                            )
                          ],
                        )
                      
                    ],),
                  )

                ],),
            )

          ],
        ),
      ),
      
    );
  }
}
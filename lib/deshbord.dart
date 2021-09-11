import 'package:flutter/material.dart';
// import 'package:carousel_slider/carousel_slider.dart';
import 'lsitview.dart';

class Dashbord extends StatefulWidget {
  const Dashbord({ Key? key }) : super(key: key);

  @override
  _DashbordState createState() => _DashbordState();
}

class _DashbordState extends State<Dashbord> {

  // final List <String> images =[

  //   "https://picsum.photos/250?image=9",
  //   "https://picsum.photos/250?image=9",
  //   "https://picsum.photos/250?image=9",
  //   "https://picsum.photos/250?image=9",
  // ];


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
    
    
    
                    // CarouselSlider(images: images),
                    
                    Image(image: NetworkImage("https://images.unsplash.com/photo-1483721310020-03333e577078?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80",),fit: BoxFit.cover,height: double.infinity,width:double.infinity,),
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
                    
    
                  ],),
              ),
               SizedBox(
                      height: 30,
                    ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Text("For you better",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold) ,),
                  Row(children: [
                    Text("See all",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold, color: Colors.redAccent) ,),
                    Icon(Icons.arrow_forward_ios_rounded, size:12,),
                    // Icon(Icons.arrow_forward_ios_rounded),
                  ],)
                ],),
              ),
              SizedBox(
                height: 20,
              ),
            //=====================================================================================//
    
    listviewdata()
    
    
    
    
    
              // Container(
              //   height: 210,
              //   width: double.infinity,
              //   padding: EdgeInsets.only(left: 5, ),
              //   // color: Colors.black,
              //   child: ListView.builder(
              //     scrollDirection: Axis.horizontal,
                  
              //     itemCount: 2,
              //     itemBuilder: ( context, index){
              //       return InkWell(
              //         onTap: (){},
              //         child: Container(
              //           child: Image.network(images [index]),
              //         )
              //         // Image.network("https://picsum.photos/250?image=9")
              //         // Container(
                        
              //         //   // decoration: BoxDecoration(
              //         //   //   image: DecorationImage(image: NetworkImage(images[index]),)
                          
              //         //   // ),
              //         //   child: Text(images[index]),
              //         // ),
              //       );
    
              //     }
                  
                  
              //     ),
              // )
              // Container(
              //   height: 210,
              //   child: ListView(
              //     scrollDirection: Axis.horizontal,
              //     children: [
              //       listslider( "https://bit.ly/3twDHWg", ),
              //     ],
              //   ),
              // )
    
            ],
          ),
        ),
        
      ),
    );
  }
}




// class CarouselSlider extends StatelessWidget {
//   const CarouselSlider({
//     Key? key,
//     required this.images,
//   }) : super(key: key);

//   final List<String> images;

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
      
//       padding: const EdgeInsets.fromLTRB(15, 0, 0, 10),
//       child: Column(
        
//         mainAxisAlignment: MainAxisAlignment.end,
//         children: [

//           Column(
//             // mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Row(
//                 children: [
//                   Text("Show offers for new members",
//                   style: TextStyle(color: Colors.white,fontSize: 15),),
//                   SizedBox(
//                     width: 5,
//                   ),
//                   Icon(Icons.arrow_right_alt,color: Colors.white,),
//                   ],
//               ),

//               Container(
//                 child: CarouselSlider.builder(
//                   itemCount: images.length, 
//                     options: CarouselOptions(
//                     autoPlay: false,
//                     // aspectRatio: 2,
//                     // enlargeCenterPage: true
//                   ),
//                   itemBuilder: ( context, index , realIdx){
//                     return Container(
//                       child: Image.network(images [index],
//                       fit: BoxFit.cover,height: double.infinity,width:double.infinity
//                       ),
//                     );

//                   }, 
                
                  
//                   ),
//               )
           
//             ],
//           )
        
//       ],),
//     );
//   }
// }




// Container(
                    //   width: 150,
                    //   height: 150,
                    //   color: Colors.black,
                    // ),);
      //               Wrap(
      //   children: [
      //     Stack(children: [ Image.network(images [index]), Column(
      //       crossAxisAlignment: CrossAxisAlignment.end,
      //       children: [
      //         Padding(
      //           padding: const EdgeInsets.fromLTRB(0, 10, 10, 0),
      //           child: Icon(Icons.bookmark_rounded,size: 24,),
      //         ),
      //       ],
      //     )],),
      //     // ListTile(
      //     //   title: Text(headline),
      //     //   subtitle: Text(subhadline),
      //     // )
      //   ],
      // ),
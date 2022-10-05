import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tourism/Components/All_Components.dart';
import 'package:tourism/Screens/Artifishiyal.dart';
import 'package:tourism/Screens/Jadughar.dart';
import 'package:tourism/Screens/Jorna.dart';
import 'package:tourism/Screens/Lekh.dart';
import 'package:tourism/Screens/Pahaar.dart';
import 'package:tourism/Screens/Sea_Beach_Screen.dart';

final List<String> imgList = [
  'images/arti1.jpg',
  'images/s1.jpg',
  'images/le2.jpg',
  'images/gerold.jpg',
  'images/p1.jpg',
  'images/sa.jpg',
  'images/sa2.jpg',
  'images/sa3.jpg',
  'images/sa4.jpg',
  'images/p3.jpg',
]; //// images for carousal slider




//
// List<Route> myRoute = [
//   MaterialPageRoute(builder: (_) => Sea_beach() ),
//   MaterialPageRoute(builder: (_) => All_details_two() ),
//
// ];


class Home_Screen extends StatelessWidget {

  final List<Widget> imageSliders = imgList
      .map((item) => Container(
            child: Container(
              margin: EdgeInsets.all(5.0),
              child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  child: Stack(
                    children: <Widget>[
                      Image.asset(item,
                          fit: BoxFit.cover, width: double.infinity),
                    ],
                  )),
            ),
          ))
      .toList(); // made for carousal slider



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff8cb0b6),
      appBar: AppBar(
        centerTitle: true ,
        title: Text('BD-Tourism',style: TextStyle(fontWeight: FontWeight.bold),),
      ),

      body: SafeArea(

        child: ListView(

          shrinkWrap: true,
          children:[
            Container(
              child: CarouselSlider(

                options: CarouselOptions(

                  autoPlay: true,
                  aspectRatio: 2.0,
                  enlargeCenterPage: true,

                ),
                items: imageSliders,
              ),
            ),

            SizedBox(height: 10.0,),



            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0),
              child: Container(
                child: GridView(
                  physics: NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,

                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 1,
                    crossAxisCount: 2,
                    crossAxisSpacing: 15.0,
                    mainAxisSpacing: 15.0,
                  ),
                  children: [
                    DashboardMenuItems(image: "images/sea2.jpg",name: "সমুদ্র",route:(){ Navigator.push(context, CupertinoPageRoute(builder: (context)=>  Sea_beach()));}) ,
                    DashboardMenuItems(image: "images/p4.jpg",name: "পাহাড়",route:(){ Navigator.push(context, CupertinoPageRoute(builder: (context)=>  Pahar()));}),
                    DashboardMenuItems(image: "images/jor2.jpg",name: "ঝর্ণা",route:(){ Navigator.push(context, CupertinoPageRoute(builder: (context)=>  Jorna()));}),
                    DashboardMenuItems(image: "images/le1.jpg",name: "লেক",route:(){ Navigator.push(context, CupertinoPageRoute(builder: (context)=>  Lekh()));}),
                    DashboardMenuItems(image: "images/jadu1.png",name: "জাদুঘর",route:(){ Navigator.push(context, CupertinoPageRoute(builder: (context)=> Jadughar ()));}),
                    DashboardMenuItems(image: "images/arti7.jpg",name: "আর্টিফিসিয়াল",route:(){ Navigator.push(context, CupertinoPageRoute(builder: (context)=>  Artifi()));}),

                  ],
                ),
              ),
            ),

        ]
        ),
      ),
    );
  }
}





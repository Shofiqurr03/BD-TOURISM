import 'package:flutter/material.dart';

class DashboardMenuItems extends StatelessWidget { // this class made for DashbaordMenuitems with images

  String image;
  String name;
  void Function() route;

  DashboardMenuItems({ required this.image,required this.name,required this.route

  });




  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: route,

      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: fcolor, width: 5) ,

            borderRadius: BorderRadius.circular(20),

        ),

        child: Column(
          //   mainAxisAlignment: MainAxisAlignment.center,

          children: [

            AspectRatio(

              aspectRatio: 1.55,
              child: Container(
                child:
                ClipRRect(
                    borderRadius: BorderRadius.only(topRight: Radius.circular(20.0,),topLeft: Radius.circular(20.0)),
                    child: Image.asset(image,
                        fit: BoxFit.cover, width: double.infinity)),
              ),

            ),
            SizedBox(height: 15.0,),



            Text(name,style:TextStyle(fontSize: 17.0,fontWeight: FontWeight.bold),)
          ],
        ),
      ),
    );
  }
}



class Resuable_ListView_Builder extends StatelessWidget {
  const Resuable_ListView_Builder({
    required this.count,
    required this.myRoute,
    required this.arrayName
  }) ;

  final int count;
  final List<Route> myRoute;
  final List<String> arrayName;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(

        itemCount: count,
        itemBuilder: (BuildContext context , int index) {

          return Card(
            color: fcolor,

            child: ListTile(

              onTap: (){

                Navigator.of(context).push(myRoute[index]);


              },

              leading: Icon( Icons.album),
              title: Text(arrayName[index]
                ),
              trailing: Icon(Icons.arrow_forward_ios_outlined),
            ),
          );

        }
    );
  }
}

Color fcolor =Color(0xff8cb0b6);
Color bcolor = Colors.grey;



